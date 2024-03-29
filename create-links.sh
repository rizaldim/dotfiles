#!/usr/bin/env bash

for item in zshrc tmux.conf; do
  ln -fs "$PWD/$item" "$HOME/.$item"
done

for item in config/* ; do
  ln -sf "$PWD/$item" "$HOME/.$item"
done
