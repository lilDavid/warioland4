import itertools
import sys


SIZE_TABLE = {
    ("ATTR0_SQUARE", 0): "ATTR1_8x8",
    ("ATTR0_SQUARE", 1): "ATTR1_16x16",
    ("ATTR0_SQUARE", 2): "ATTR1_32x32",
    ("ATTR0_SQUARE", 3): "ATTR1_64x64",
    ("ATTR0_WIDE", 0): "ATTR1_16x8",
    ("ATTR0_WIDE", 1): "ATTR1_32x8",
    ("ATTR0_WIDE", 2): "ATTR1_32x16",
    ("ATTR0_WIDE", 3): "ATTR1_64x32",
    ("ATTR0_TALL", 0): "ATTR1_8x16",
    ("ATTR0_TALL", 1): "ATTR1_8x32",
    ("ATTR0_TALL", 2): "ATTR1_16x32",
    ("ATTR0_TALL", 3): "ATTR1_32x64",
}


_, rom_file, start, end, *_ = sys.argv

start = int(start, 0)
end = int(end, 0)

with open(rom_file, 'rb') as stream:
    stream.read(start)
    oam_data = stream.read(end - start)

remaining = 0
for addr, bytepair in zip(itertools.count(start, 2), itertools.batched(oam_data, 2)):
    short = int.from_bytes(bytepair, "little")
    if remaining == 0:
        remaining = 3 * short
        print(f"    {short},")
        print(format(addr + 0x8000000, "X"), file=sys.stderr)
    else:
        if remaining % 3 == 0:
            y = short & 0xFF
            if y & 0x80:
                y -= 0x100
            if short & 0xC000 == 0:
                shape = "ATTR0_SQUARE"
            elif short & 0xC000 == 0x4000:
                shape = "ATTR0_WIDE"
            elif short & 0xC000 == 0x8000:
                shape = "ATTR0_TALL"
            else:
                raise ValueError("Invalid shape 3")
            if short & 0x300:
                raise NotImplementedError("Non-regular sprite")
            if short & 0xC00:
                raise NotImplementedError("Gfx mode")
            if short & 0x1000:
                raise NotImplementedError("Mosaic")
            if short & 0x300:
                raise NotImplementedError(f"Non-regular sprite")
        elif remaining % 3 == 2:
            x = short & 0x1FF
            if x & 0x100:
                x -= 0x200
            attr1_flags = [SIZE_TABLE[(shape, (short & 0xC000) >> 14)]]
            if short & 0x1000:
                attr1_flags.append("ATTR1_HFLIP")
            if short & 0x2000:
                attr1_flags.append("ATTR1_VFLIP")
        elif remaining % 3 == 1:
            tid = short & 0x3FF
            prio = (short & 0x0C00) >> 10
            palette = (short & 0xF000) >> 12
        remaining -= 1
        if remaining % 3 == 0:
            print(f"    OAM_ENTRY({x}, {y}, {shape}, {' | '.join(attr1_flags)}, {tid}, {palette}, {prio}),")
