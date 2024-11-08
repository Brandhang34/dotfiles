# Plugins
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $HOME/.oh-my-zsh/oh-my-zsh.sh

eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# Exports
export TERM=xterm-256color
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/sushamae/go/bin
export PATH=$PATH:/home/sushamae/.local/bin

# User configuration
alias ls='eza --icons --classify --color=always --group-directories-first'
alias ll='eza -alF --icons --classify --color=always --group-directories-first'
alias la='eza -a --icons classify --color=always --group-directories-first'
alias l='eza -F --icons --classify --color=always --group-directories-first'
alias l.='eza -a | egrep "^\."'

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

alias cat='bat'

alias c=clear
alias s='source ~/.zshrc'
alias e=exit

alias a='sh ~/.ssh/gum_ssh.sh'
alias awsacc='sh ~/.aws/aws_acc.sh'

# export AWS_PROFILE=default

# alias awp="echo -e 'AWS_PROFILE='\$AWS_PROFILE'\n' && grep '\[profile ' ~/.aws/config | sed 's/\[profile //;s/\]//' && echo -e '\nset-awp \$1 to change'"

# set-awp() {
#     if [ -z "$1" ]; then
#         echo "Please provide a profile name (current profile = ${AWS_PROFILE})"
#     else
#         export AWS_PROFILE="$1"
#         echo "Switched to AWS profile: $AWS_PROFILE"
#     fi
# }

alias open='gnome-open'

#creating directories alias
function take {
  mkdir -p $1
  cd $1
}

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}

# Created by `pipx` on 2024-09-17 01:37:18
export PATH="$PATH:/home/sushamae/.local/bin"

source /home/sushamae/.config/broot/launcher/bash/br
