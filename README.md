# dotfiles

This repo use git submodule for Neovim's plugins. After cloning the repo,
run these commands to pull the plugins:

```bash
git submodule init
git submodule update
```

To use, create link to the respective config file or directories.
For example:

```bash
ln -s ~/repo/dotfiles/nvim ~/.config/nvim
ln -s ~/repo/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/repo/dotfiles/alacritty.yml ~/.alacritty.yml
```

For NeoVim, we need [fzf](https://github.com/junegunn/fzf) installed. Its repo
will be pulled when updating the submodules. To install fzf binary, run:

```bash
~/repo/dotfiles/nvim/pack/minpac/start/fzf/install --bin
```

The binaries will be in **~/repo/dotfiles/nvim/pack/minpac/start/fzf/bin** directory.
Add the path into your **PATH** environment variable or copy the binaries into
one of the directories in your **PATH**.

## Alacritty

For alacritty, install its theme. Find the installation instruction in [its repo](https://github.com/alacritty/alacritty-theme).
