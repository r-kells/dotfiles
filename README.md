# dotfiles

Bootstrapping a new development setup

## Instructions

```bash
git clone https://github.com/r-kells/dotfiles.git

cd dotfiles

bash bootstrap.sh
```
## Wait! what happens when I run this thing?

In order:

1. `init/osx_prep.sh` - Checks for osx updates and install CLI tools.
2. `init/brew.sh` - Install homebrew and core utils / apps with brew.
3. Symlinks all files in `dots` to `~`.
4. Symlinks all files in `static` to `~`.
5. `init/osx.sh` - Sets sane osx configs.