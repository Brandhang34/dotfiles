#!/bin/bash

case "$1" in
  "explorer")
    # tmux split-window -h -l 30 -b "broot $PWD"
    # yazi
  ;;
  "terminal")
    zellij action new-pane --floating --name "Terminal" --cwd "$PWD"
  ;;
  "tgpt")
    zellij run --floating --close-on-exit -y 15% --height 80% -x 10% --width 80% --name "Terminal GPT" -- tgpt -m
  ;;
  "lazygit")
    zellij run --floating --close-on-exit -y 15% --height 70% -x 10% --width 80% --name "Lazy Git" -- lazygit
esac
