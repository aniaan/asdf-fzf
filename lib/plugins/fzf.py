import os
import sys

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.dirname(__file__))))
from lib.lib import Plugin

PLUGIN = Plugin(
    name="fzf",
    cmd="fzf",
    repo_name="junegunn/fzf",
    filename_template="fzf-{normalize_version}-{platform}_{arch}.tar.gz",
    platform_map={
        "darwin": "darwin",
        "linux": "linux",
    },
    arch_map={
        "x86_64": "amd64",
        "aarch64": "arm64",
    },
    checksum_filename_template="fzf_{normalize_version}_checksums.txt",
    bin_path="fzf",
    recover_raw_version=lambda x: f"v{x}",
)
