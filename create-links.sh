#!/usr/bin/env bash

for item in zshrc tmux.conf; do
  if ((test -f "$HOME/.$item") && (test "$answer" != "a")); then
    read -rp "File $HOME/.$item already exists. Overwrite? (y/n/a) " answer

    if ((test "$answer" = "y") || (test "$answer" = "a"));
    then
      ln -fs "$PWD/$item" "$HOME/.$item";
    else
      echo "Skipped";
    fi

  else
    ln -fs "$PWD/$item" "$HOME/.$item"
  fi
done

for item in config/* ; do
  ln -fhs "$PWD/$item" "$HOME/.$item"
done
