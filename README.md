# Wario Land 4

This is a work-in-progress decompilation of *Wario Land 4*.

This repository can build the following versions:
- US/EU `md5: 5fe47355a33e3fabec2a1607af88a404` (default)
- JP `md5: 99c8ad779a16be513a9fdff502b6f5c2`

## Dependencies

- `binutils-arm-none-eabi`

## Building

To build the US version: place the ROM in the repository root as `baserom_us.gba`, then run `make`.

To build the JP version: name the ROM `baserom_jp.gba` and run `make VERSION=jp`.

For more details, run `make help`.
