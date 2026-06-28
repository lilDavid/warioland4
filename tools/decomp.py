import re
from typing import Literal
from pathlib import Path

IWRAM = range(0x3000000, 0x3008000)
TEXT = range(0x8000000, 0x80953EC)
ROM = range(0x8000000, 0x8800000)

map_regex = re.compile(r"\s*(0x[0-9a-f]+)\s+(\w+)\s*(?:=\s*\.)?\s*")


def parse_map(path: str | Path):
    symbols: dict[int, str] = {}
    with open(path, "r") as file:
        for line in file:
            match = map_regex.match(line)
            if match is None:
                continue
            addr, sym = match.groups()
            symbols[int(addr, base=0)] = sym
    return symbols


def get_symbol(
    addr: int, symbols: dict[int, str], ctx: Literal["call", "data"] | None = None, strict_addrs: bool = False
):
    symbol = symbols.get(addr)
    if symbol is not None:
        return symbol
    # Use heuristics to guess certain values are pointers and convert them to undocumented names
    if strict_addrs:
        return f"0x{addr:X}"
    if addr in IWRAM:
        return f"gUnk_{addr:X}"
    if addr not in ROM:
        return f"0x{addr:X}"
    if ctx == "call":
        addr &= ~1
        return f"func_{addr:X}"
    if ctx == "data":
        if addr in TEXT:
            if addr & 1:
                return f"func_{addr & ~1:X}"
            else:
                return f".L_{addr & ~0x8000000:x}"
        else:
            return f"sUnk_{addr:X}"
    return f"0x{addr:X}"
