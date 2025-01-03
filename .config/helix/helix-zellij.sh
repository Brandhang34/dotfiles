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
    zellij run --floating --close-on-exit --name "Terminal GPT" -- tgpt -m
esac
