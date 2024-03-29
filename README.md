# dotfiles

To use, run the following commands to create necessary soft links:

```bash
./create-links.sh
```

## NeoVim

This repo use git submodule for Neovim's plugins. After cloning the repo,
run these commands to pull the plugins:

```bash
git submodule init
git submodule update
```

### File search using fzf

For NeoVim, we need [fzf](https://github.com/junegunn/fzf) installed. Its repo
will be pulled when updating the submodules. To install fzf binary, run:

```bash
~/repo/dotfiles/nvim/pack/minpac/start/fzf/install --bin
```

The binaries will be in **~/repo/dotfiles/nvim/pack/minpac/start/fzf/bin** directory.
Add the path into your **PATH** environment variable or copy the binaries into
one of the directories in your **PATH**.

Also don't forget to install [repgrip](https://github.com/BurntSushi/ripgrep#installation)
and set **FZF_DEFAULT_COMMAND** environment variable.

```bash
export FZF_DEFAULT_COMMAND='rg --files'
```

## Alacritty

For alacritty, install its theme. Find the installation instruction in [its
repo](https://github.com/alacritty/alacritty-theme).

