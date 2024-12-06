# asdf-fzf

[fzf](https://github.com/junegunn/fzf) plugin for [asdf](https://github.com/asdf-vm/asdf) version manager.

## Install

```bash
asdf plugin add fzf https://github.com/aniaan/asdf-fzf.git
```

## Use

Check out the [asdf](https://github.com/asdf-vm/asdf) readme for instructions on how to install & manage versions of fzf.

## Example

```bash
# Show all installable versions
asdf list-all fzf

# Install specific version
asdf install fzf 0.56.3

# Set a version globally
asdf global fzf 0.56.3

# Set a version locally
asdf local fzf 0.56.3
```

## Platform Support

The following platforms are supported:
- macOS (darwin) - amd64, arm64
- Linux - amd64, arm64
