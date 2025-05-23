#!/bin/bash

# This script utilizes gum to present a selection of hosts to ssh to.
# Assuming the ~/.ssh/config is configured properly with hosts, after
# making a selection, the ssh command will be executed.

function getSSHConfigs() {
  gum choose $(grep -P "^Host" $HOME/.ssh/config | awk '{ print $2 }') --selected.background "10" --cursor.foreground "10"
}

# Check if the ssh config file exists
if [[ ! -f $HOME/.ssh/config ]]; then
  echo "SSH config file not found"
  exit 1
fi

gum style \
  --foreground 255 --border-foreground 10 --border double \
  --align center --width 20 --margin "1 1" --padding "1 4" \
  'Choose Host'

HOSTS=$(getSSHConfigs)

echo "SSHing into $HOSTS"
ssh "$HOSTS"
