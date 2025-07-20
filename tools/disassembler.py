from argparse import ArgumentParser
from collections import namedtuple
import functools
import itertools
import re
import shutil
import subprocess
import sys


STRICT_ADDRESSES = False

OBJDUMP = shutil.which("arm-none-eabi-objdump")
OBJDUMP_ARGS = (OBJDUMP, "-bbinary", "-marm7tdmi", "-Dz", "-Mforce-thumb")

IWRAM = range(0x3000000, 0x3008000)
TEXT = range(0x8000000, 0x80953EC)
ROM = range(0x8000000, 0x8800000)


map_regex = re.compile(r'\s*(0x[0-9a-f]+)\s+(\w+)\s*(?:=\s*\.)?\s*')
disassembly_regex = re.compile(r'\s*([0-9a-f]+):\s+([0-9a-f ]+)\s+(\S+)(?:\s+([^@]+)\s+)?(?:@ (.*))?\s*')
ldr_regex = re.compile(r'(r\d), \[(\w+), #?(\w+)\]')


Instruction = namedtuple('Instruction', ['label', 'raw', 'mnemonic', 'operands', 'comment'])


def parse_map(path):
    symbols = {}
    with open(path, 'r') as file:
        for line in file:
            match = map_regex.match(line)
            if match is None:
                continue
            addr, sym = match.groups()
            symbols[int(addr, base=0)] = sym
    return symbols


def get_symbol(addr, symbols, ctx=None, strict_addrs=False):
    addr = int(addr, base=0)
    symbol = symbols.get(addr)
    if symbol is not None:
        return symbol
    # Use heuristics to guess certain values are pointers and convert them to undocumented names
    if strict_addrs:
        return f'0x{addr:X}'
    if addr in IWRAM:
        return f'gUnk_{addr:X}'
    if addr not in ROM:
        return f'0x{addr:X}'
    if ctx == 'call':
        addr &= ~1
        return f'func_{addr:X}'
    if ctx == 'data':
        if addr in TEXT:
            if addr & 1:
                return f'func_{addr & ~1:X}'
            else:
                return f'.L_{addr & ~0x8000000:x}'
        else:
            return f'sUnk_{addr:X}'
    return f'0x{addr:X}'


def make_data(source, iterator, i, inst, symbols, setlabel=True):
    label = f'.L_{inst.label}' if setlabel else inst.label
    if len(inst.raw.replace(' ', '')) > 4:
        value = inst.raw.replace(' ', '')
        value = value[4:] + value[:4]
    else:
        value = f'{source[i+1].raw}{inst.raw}'.replace(' ', '')
        next(iterator)
    return Instruction(label, value, '.4byte', get_symbol(f'0x{value}', symbols, 'data'), '')


def parse_instructions(file):
    instructions = []
    with file:
        for line in file:
            match = disassembly_regex.match(line)
            if match is None:
                continue
            instructions.append(Instruction._make(group or '' for group in match.groups()))
    return instructions


# Only works for THUMB
def cleanup_objdump(instructions, symbols: dict = None):
    if symbols is None:
        symbols = {}

    # Remove 's' flag
    for i, inst in enumerate(instructions):
        if inst.mnemonic[-1] == 's':
            instructions[i] = inst._replace(mnemonic=inst.mnemonic[:-1])

    # Remove 4-byte instructions other than bl
    _instructions, instructions = instructions, []
    iterator = iter(enumerate(_instructions))
    for i, inst in iterator:
        if len(inst.raw.replace(' ', '')) > 4 and inst.mnemonic != 'bl':
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
    state = 'code'
    for i, inst in iterator:
        if inst.label in branch_targets:
            state = 'code'
        if state == 'code':
            if inst.mnemonic == 'ldr':
                rd, rs, off = ldr_regex.match(inst.operands).groups()
                if rs == 'pc' and inst.label not in pool_addresses:
                    addr = inst.comment[3:-1]
                    pool_addresses.add(addr)
                    inst = inst._replace(operands=f'{rd}, .L_{addr}', comment='')
            if inst.mnemonic.endswith('.n'):
                addr = inst.operands[2:]
                branch_targets.add(addr)
                inst = inst._replace(mnemonic=inst.mnemonic[:-2], operands=f'.L_{addr}')
            if inst.mnemonic in ('b', 'bx') or inst.mnemonic == 'mov' and inst.operands.startswith('pc'):
                state = 'data'
            if inst.mnemonic == 'bl':
                addr = f'0x{int(inst.operands, base=0) | 0x8000000:08x}'
                inst = inst._replace(operands=get_symbol(addr, symbols, 'call'))
        elif state in ('data', 'jumptable'):
            if inst.raw.startswith("0000"):
                if inst.raw.strip() == '0000' and inst.label.strip()[-1] in '26AaEe':
                    instructions.append(inst._replace(mnemonic='.align', operands='2, 0'))
                    continue
            inst = make_data(_instructions, iterator, i, inst, symbols, setlabel=False)
            addr = int(inst.raw.strip().replace(' ', ''), base=16) & 0x7FFFFFE
            reference_label = format(addr, '04x')
            if state == 'jumptable':
                branch_targets.add(reference_label)
            else:
                pool_addresses.add(reference_label)
            # Heuristic: If this points to the very next word, that word's probably a jump table
            if addr == (int(inst.label.strip().replace(' ', ''), base=16) & 0x7FFFFFE) + 4:
                state = 'jumptable'
        else:
            raise ValueError(f"Reached invalid state: {repr(state)}")
        instructions.append(inst)

    # Add labels to referenced addresses
    for i, inst in enumerate(instructions):
        if inst.label in branch_targets or inst.label in pool_addresses:
            instructions[i] = inst._replace(label=f'.L_{inst.label}')

    return instructions


def objdump(rom, start_addr, end_addr):
    return subprocess.Popen(OBJDUMP_ARGS + (rom, f"--start-address={start_addr}", f"--stop-address={end_addr}"),
                            stdout=subprocess.PIPE, text=True)


def disassemble_function(rom, start_addr, end_addr, symbols=None, quiet=False):
    objdump_process = objdump(rom, start_addr, end_addr)
    instructions = parse_instructions(objdump_process.stdout)
    if objdump_process.wait() != 0:
        print(f"Error disassembling 0x{start_addr:06x}-0x{end_addr:06x}", file=sys.stderr)
        exit(objdump_process.returncode)

    instructions = cleanup_objdump(instructions, symbols)
    if not quiet:
        print()
        print()
        print(f"thumb_func_start func_8{start_addr:06X}")
        print(f"func_8{start_addr:06X}:")
    for inst in instructions:
        label, raw, mnemonic, operands, comment = inst
        if label.startswith('.L_'):
            print(f'{label}:')
        print('', mnemonic, operands, comment and f'@ {comment}', sep='\t')


if __name__ == "__main__":
    parser = ArgumentParser()
    parser.add_argument("addresses", type=functools.partial(int, base=16), nargs="+",
                        help="Address range to disassemble. Give more than 2 addresses to disassemble multiple "
                             "functions.")
    parser.add_argument("-v", "--version", type=str, choices=["us", "jp"], default="us",
                        help="The version of the ROM to disassemble from")
    parser.add_argument("-q", "--quiet", action="store_true",
                        help="Only output disassembled code without a label. Only valid if disassembling one function.")

    args = parser.parse_args()
    if len(args.addresses) < 2:
        print("Start and end addresses are required", file=sys.stderr)
        exit(1)
    if len(args.addresses) > 2 and args.quiet:
        print("Quiet flag is invalid if disassembling multiple functions", file=sys.stderr)
        exit(1)

    try:
        symbols = parse_map(f"build/{args.version}/warioland4_{args.version}.map")
    except FileNotFoundError:
        symbols = None

    if not args.quiet:
        print('.include "macros.s.inc"')
    for start, end in itertools.pairwise(addr & 0x7FFFFFE for addr in args.addresses):
        disassemble_function(f"baserom_{args.version}.gba", start, end, symbols=symbols, quiet=args.quiet)
