# Launch Zellij on startup

# Disable Welcome Prompt
set fish_greeting

# source binaries
starship init fish | source
zoxide init fish | source
source $HOME/.config/fish/env_variables.fish

# Exports
set -U fish_user_paths ~/.cargo/bin $fish_user_paths
set -U fish_user_paths /usr/local/go/bin $fish_user_paths
set -U fish_user_paths ~/go/bin $fish_user_paths
set -U fish_user_paths ~/.local/bin $fish_user_paths

# User Configuration
alias cd=z

alias ls="eza --icons --classify --color=always --group-directories-first"
alias ll='eza -alF --icons --classify --color=always --group-directories-first'
alias la='eza -a --icons classify --color=always --group-directories-first'
alias l='eza -F --icons --classify --color=always --group-directories-first'
alias l.='eza -a | egrep "^\."'

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

alias cat='bat'

alias c=clear
alias s='source ~/.config/fish/config.fish'
alias e=exit

alias a='sh ~/.ssh/gum_ssh.sh'
alias awsacc='source ~/.aws/aws_acc.sh'

alias open='gnome-open'

function take
    mkdir -p $argv && cd $argv
end
