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
```
