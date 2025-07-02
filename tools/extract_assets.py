import argparse
import itertools
from pathlib import Path
import yaml


DATA_PATH = Path("data")
INC_PATH = Path("include/data")
DATABASE = Path("asset_database.yaml")


def extract_data(version: str, quiet: bool):
    with open(f"baserom_{version}.gba", "rb") as stream:
        rom = stream.read()
    with open(DATABASE, "r") as stream:
        database = yaml.safe_load(stream)
    if version in ("us", "jp"):
        version = "us_jp"

    for entry in database:
        path: str = entry["path"]
        if not quiet:
            print("Extracting", path)

        bin_path = DATA_PATH / path
        inc_path = INC_PATH / f"{path}.inc"
        bin_path.parent.mkdir(parents=True, exist_ok=True)
        inc_path.parent.mkdir(parents=True, exist_ok=True)

        addr = entry["addr"].get(version)
        if addr is None:
            continue

        count = entry["count"]
        if isinstance(count, dict):
            count = count[version]
        unit_size: int = entry["size"]
        size: int = count * unit_size

        # Dump binary file
        data_bytes = rom[addr:addr + size]
        with open(bin_path, "wb") as stream:
            stream.write(data_bytes)

        # Write include file
        with open(inc_path, "w") as stream:
            for batch in itertools.batched(data_bytes, unit_size):
                unit = int.from_bytes(batch, "little")
                print(f"0x{unit:X}", end=", ", file=stream)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group()
    group.add_argument("-v", "--version", type=str, choices=["us", "jp"],
        default="us", help="The version of the ROM to extract from")
    # group.add_argument("-d", "--debug", action="store_true",
    #     help="Extract debug data from the US beta rom")
    parser.add_argument("-q", "--quiet", action="store_true", help="Suppress output")

    args = parser.parse_args()
    if not args.version and not args.debug:
        args.version = "us"

    extract_data(args.version, args.quiet)
