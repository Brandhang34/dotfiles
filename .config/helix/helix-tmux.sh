!/bin/bash

split-window-bottom() {
  echo "hello"
}

case "$1" in
  "explorer")
    tmux split-window -h -l 30 -b "broot $PWD"
  ;;
  "terminal")
    tmux split-window -v -l 10 -c "$PWD"
  ;;
  "tgpt")
    tmux split-window -h -l 80 -b "tgpt -m"
esac
