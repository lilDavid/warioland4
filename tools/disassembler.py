from argparse import ArgumentParser
from collections import namedtuple
import functools
import itertools
import re
import shutil
import subprocess
import sys

import decomp


STRICT_ADDRESSES = False

OBJDUMP = shutil.which("arm-none-eabi-objdump")
if OBJDUMP is None:
    raise Exception("Could not find arm-none-eabi-objdump on your PATH")
OBJDUMP_ARGS = (OBJDUMP, "-bbinary", "-marm7tdmi", "-Dz", "-Mforce-thumb")

disassembly_regex = re.compile(r"\s*([0-9a-f]+):\s+([0-9a-f ]+)\s+(\S+)(?:\s+([^@]+)\s+)?(?:@ (.*))?\s*")
ldr_regex = re.compile(r"(r\d), \[(\w+), #?(\w+)\]")


Instruction = namedtuple("Instruction", ["label", "raw", "mnemonic", "operands", "comment"])


def make_data(source, iterator, i, inst, symbols, setlabel=True):
    label = f".L_{inst.label}" if setlabel else inst.label
    if len(inst.raw.replace(" ", "")) > 4:
        value = inst.raw.replace(" ", "")
        value = value[4:] + value[:4]
    else:
        value = f"{source[i + 1].raw}{inst.raw}".replace(" ", "")
        next(iterator)
    return Instruction(label, value, ".4byte", decomp.get_symbol(int(value, base=16), symbols, "data"), "")


def parse_instructions(file):
    instructions = []
    with file:
        for line in file:
            match = disassembly_regex.match(line)
            if match is None:
                continue
            instructions.append(Instruction._make(group or "" for group in match.groups()))
    return instructions


# Only works for THUMB
def cleanup_objdump(instructions: list[Instruction], symbols: dict[int, str] | None = None):
    if symbols is None:
        symbols = {}

    # Remove 's' flag
    for i, inst in enumerate(instructions):
        if inst.mnemonic[-1] == "s":
            instructions[i] = inst._replace(mnemonic=inst.mnemonic[:-1])

    # Remove 4-byte instructions other than bl
    _instructions, instructions = instructions, []
    iterator = iter(enumerate(_instructions))
    for i, inst in iterator:
        if len(inst.raw.replace(" ", "")) > 4 and inst.mnemonic != "bl":
            addr = int(inst.label, base=16)
            lower, upper = inst.raw.split()
            instructions.append(Instruction(f"{addr:x}", lower, ".2byte", f"0x{lower}", ""))
            instructions.append(Instruction(f"{addr + 2:x}", upper, ".2byte", f"0x{upper}", ""))
        else:
            instructions.append(inst)

    # Find jump tables and other targets of PC-relative loads and jumps
    _instructions, instructions = instructions, []
    iterator = iter(enumerate(_instructions))
    branch_targets = set()
    pool_addresses = set()
    state = "code"
    for i, inst in iterator:
        if inst.label in branch_targets:
            state = "code"
        if state == "code":
            if inst.mnemonic == "ldr":
                match = ldr_regex.match(inst.operands)
                assert match is not None
                rd, rs, off = match.groups()
                if rs == "pc" and inst.label not in pool_addresses:
                    addr = inst.comment[3:-1]
                    pool_addresses.add(addr)
                    inst = inst._replace(operands=f"{rd}, .L_{addr}", comment="")
            if inst.mnemonic.endswith(".n"):
                addr = inst.operands[2:]
                branch_targets.add(addr)
                inst = inst._replace(mnemonic=inst.mnemonic[:-2], operands=f".L_{addr}")
            if inst.mnemonic in ("b", "bx") or inst.mnemonic == "mov" and inst.operands.startswith("pc"):
                state = "data"
            if inst.mnemonic == "bl":
                addr = int(inst.operands, base=0) | decomp.ROM.start
                inst = inst._replace(operands=decomp.get_symbol(addr, symbols, "call"))
        elif state in ("data", "jumptable"):
            if inst.raw.startswith("0000"):
                if inst.raw.strip() == "0000" and inst.label.strip()[-1] in "26AaEe":
                    instructions.append(inst._replace(mnemonic=".align", operands="2, 0"))
                    continue
            inst = make_data(_instructions, iterator, i, inst, symbols, setlabel=False)
            addr = int(inst.raw.strip().replace(" ", ""), base=16) & (decomp.ROM.start - 1)
            reference_label = format(addr, "04x")
            if state == "jumptable":
                branch_targets.add(reference_label)
            else:
                pool_addresses.add(reference_label)
            # Heuristic: If this points to the very next word, that word's probably a jump table
            if addr == (int(inst.label.strip().replace(" ", ""), base=16) & (decomp.ROM.start - 1)) + 4:
                state = "jumptable"
        else:
            raise ValueError(f"Reached invalid state: {repr(state)}")
        instructions.append(inst)

    # Add labels to referenced addresses
    for i, inst in enumerate(instructions):
        if inst.label in branch_targets or inst.label in pool_addresses:
            instructions[i] = inst._replace(label=f".L_{inst.label}")

    return instructions


def objdump(rom, start_addr, end_addr):
    return subprocess.Popen(
        OBJDUMP_ARGS + (rom, f"--start-address={start_addr}", f"--stop-address={end_addr}"),
        stdout=subprocess.PIPE,
        text=True,
    )


def disassemble_function(rom, start_addr, end_addr, symbols: dict[int, str] | None = None, quiet: bool = False):
    if symbols is None:
        symbols = {}
    objdump_process = objdump(rom, start_addr, end_addr)
    instructions = parse_instructions(objdump_process.stdout)
    if objdump_process.wait() != 0:
        print(f"Error disassembling 0x{start_addr:06x}-0x{end_addr:06x}", file=sys.stderr)
        exit(objdump_process.returncode)

    instructions = cleanup_objdump(instructions, symbols)
    if not quiet:
        print()
        print()
        name = decomp.get_symbol(start_addr | decomp.ROM.start, symbols, "call")
        print(f"thumb_func_start {name}")
        print(f"{name}:")
    for inst in instructions:
        label, raw, mnemonic, operands, comment = inst
        if label.startswith(".L_"):
            print(f"{label}:")
        print("\t".join(["", mnemonic, operands, comment and f"@ {comment}"]).rstrip())


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument(
        "addresses",
        type=functools.partial(int, base=16),
        nargs="+",
        help="Address range to disassemble. Give more than 2 addresses to disassemble multiple functions.",
    )
    parser.add_argument(
        "-v",
        "--version",
        type=str,
        choices=["us", "jp"],
        default="us",
        help="The version of the ROM to disassemble from",
    )
    parser.add_argument(
        "-q",
        "--quiet",
        action="store_true",
        help="Only output disassembled code without a label. Only valid if disassembling one function.",
    )

    args = parser.parse_args()
    if len(args.addresses) < 2:
        print("Start and end addresses are required", file=sys.stderr)
        exit(1)
    if len(args.addresses) > 2 and args.quiet:
        print("Quiet flag is invalid if disassembling multiple functions", file=sys.stderr)
        exit(1)

    try:
        symbols = decomp.parse_map(f"build/{args.version}/warioland4_{args.version}.map")
    except FileNotFoundError:
        symbols = None

    if not args.quiet:
        print('.include "macros.s.inc"')
    for start, end in itertools.pairwise(addr & (decomp.ROM.start - 1) for addr in args.addresses):
        disassemble_function(f"baserom_{args.version}.gba", start, end, symbols=symbols, quiet=args.quiet)
