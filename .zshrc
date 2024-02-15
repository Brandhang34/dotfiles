# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.

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

# User configuration
alias ls='exa --icons --classify --color=always --group-directories-first'
alias ll='exa -alF --icons --classify --color=always --group-directories-first'
alias la='exa -a --icons classify --color=always --group-directories-first'
alias l='exa -F --icons --classify --color=always --group-directories-first'
alias l.='exa -a | egrep "^\."'

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

alias cat='bat'
alias copy='pbcopy'

alias c=clear
alias s='source ~/.zshrc'
alias e=exit

alias a='sh ~/.ssh/gum_ssh.sh'

#creating directories alias
function take {
  mkdir -p $1
  cd $1
}

alias gs='function _search(){ open "https://www.google.com/search?q=$*"; };_search'

[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit;}
# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
