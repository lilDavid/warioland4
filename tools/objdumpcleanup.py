from collections import namedtuple
import re
import sys


STRICT_ADDRESSES = False

TEXT_SEGMENT_END = 0x80953EC


def file_or_stdin(file):
    if file == '-':
        return sys.stdin
    return open(file, 'r')


map_regex = re.compile(r'\s*(0x[0-9a-f]+)\s+(\w+)\s*(?:=\s*\.)?\s*')
disassembly_regex = re.compile(r'\s*([0-9a-f]+):\s+([0-9a-f ]+)\s+(\S+)(?:\s+([^@]+)\s+)?(?:@ (.*))?\s*')
ldr_regex = re.compile(r'(r\d), \[(\w+), #?(\w+)\]')

Instruction = namedtuple('Instruction', ['label', 'raw', 'mnemonic', 'operands', 'comment'])

# Parse linker map
symbols = {}
if len(sys.argv) > 2:
    with open(sys.argv[2], 'r') as file:
        for line in file:
            match = map_regex.match(line)
            if match is None:
                continue
            addr, sym = match.groups()
            symbols[addr] = sym

def get_symbol(addr, ctx=None):
    symbol = symbols.get(addr)
    if symbol is not None:
        return symbol
    # Use heuristics to guess certain values are pointers and convert them to undocumented names
    if STRICT_ADDRESSES or addr[-8] != '0':
        return addr
    if addr[-7] == '3':
        return f'gUnk_{addr[-7:].upper()}'
    if addr[-7] != '8':
        return addr
    real_address = int(addr, 0)
    if ctx == 'call':
        real_address &= ~1
        return f'func_{real_address:X}'
    if ctx == 'data':
        if real_address < TEXT_SEGMENT_END:
            if real_address & 1:
                return f'func_{real_address & ~1:X}'
            else:
                return f'.L_{real_address & ~0x8000000:x}'
        else:
            return f'sUnk_{addr[-7:].upper()}'
    return addr

# Read instructions
instructions: list[Instruction] = []
with file_or_stdin(sys.argv[1]) as file:
    for line in file:
        match = disassembly_regex.match(line)
        if match is None:
            continue
        instructions.append(Instruction._make(group or '' for group in match.groups()))

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

# Find targets of PC-relative loads and jumps
branch_targets = set()
pool_addresses = set()
for i, inst in enumerate(instructions):
    if inst.mnemonic == 'ldr':
        rd, rs, off = ldr_regex.match(inst.operands).groups()
        if rs == 'pc' and inst.label not in pool_addresses:
            addr = inst.comment[3:-1]
            pool_addresses.add(addr)
            instructions[i] = inst._replace(operands=f'{rd}, .L_{addr}', comment='')
    if inst.mnemonic.endswith('.n'):
        addr = inst.operands[2:]
        branch_targets.add(addr)
        instructions[i] = inst._replace(mnemonic=inst.mnemonic[:-2], operands=f'.L_{addr}')
    if inst.mnemonic == 'bl':
        addr = f'0x{int(inst.operands, base=0) | 0x8000000:08x}'
        instructions[i] = inst._replace(operands=get_symbol(addr, 'call'))

# Add labels to branch targets
for i, inst in enumerate(instructions):
    if inst.label in branch_targets:
        instructions[i] = inst._replace(label=f'.L_{inst.label}')

def make_data(source, iterator, i, inst, setlabel=True):
    label = f'.L_{inst.label}' if setlabel else inst.label
    if len(inst.raw.replace(' ', '')) > 4:
        value = inst.raw.replace(' ', '')
        value = value[4:] + value[:4]
    else:
        value = f'{source[i+1].raw}{inst.raw}'.replace(' ', '')
        next(iterator)
    return Instruction(label, value, '.4byte', get_symbol(f'0x{value}', 'data'), '')

# Convert pool items to data directives and add labels
_instructions, instructions = instructions, []
iterator = iter(enumerate(_instructions))
for i, inst in iterator:
    if inst.label in pool_addresses:
        instructions.append(make_data(_instructions, iterator, i, inst))
    else:
        instructions.append(inst)

# Find jump tables
# If a function refers to itself, it's probably pointing at a jump table
tables = set()
for i, inst in enumerate(instructions):
    if inst.mnemonic == '.4byte' and inst.operands.startswith('.L_'):
        tables.add(inst.operands[3:])

# Add labels to jump tables
table_targets = set()
_instructions, instructions = instructions, []
iterator = iter(enumerate(_instructions))
for i, inst in iterator:
    if inst.label in tables:
        instructions.append(make_data(_instructions, iterator, i, inst)._replace(label=f'.L_{inst.label}'))
        table_targets.add(instructions[-1].operands[3:])
        i, inst = next(iterator)
        while inst.label not in table_targets and not inst.label.startswith('.L_'):
            instructions.append(make_data(_instructions, iterator, i, inst, setlabel=False))
            table_targets.add(instructions[-1].operands[3:])
            i, inst = next(iterator)
    instructions.append(inst)

# Add labels to table targets
for i, inst in enumerate(instructions):
    if inst.label in table_targets:
        instructions[i] = inst._replace(label=f'.L_{inst.label}')

# Guess that instruction 0000 is an alignment
for i, inst in enumerate(instructions):
    if inst.raw.strip() == '0000':
        instructions[i] = inst._replace(mnemonic='.align', operands='2, 0')

# Results
for inst in instructions:
    label, raw, mnemonic, operands, comment = inst
    if label.startswith('.L_'):
        print(f'{label}:')
    print('', mnemonic, operands, comment and f'@ {comment}', sep='\t')
