# My Dot files
These are my current dotfiles and configurations for my terminal. I am running on Fedora so some of the set alias 
in the config.fish file could be different depending on the operating systems.

### Terminal Tooling:
---
These are the following terminal tools that I have installed
- [kitty terminal](https://github.com/kovidgoyal/kitty) : Terminal Emulator
- [helix](https://github.com/helix-editor/helix) : Text editor
- [zellij](https://github.com/zellij-org/zellij) : Terminal Multiplexer
- [fish](https://github.com/fish-shell/fish-shell) : Friendly interactive shell
- [starship](https://github.com/starship/starship) : Nice looking shell prompt
- [zoxide](https://github.com/ajeetdsouza/zoxide) : Smart change directory
- [bat](https://github.com/sharkdp/bat) : Better version of cat
- [ripgrep](https://github.com/BurntSushi/ripgrep) : recursive search tool
- [eza](https://github.com/eza-community/eza) : ls with colors and icons
- [gum](https://github.com/charmbracelet/gum) : Tool for shell scripts

#### Extra scripts:
- [gum_ssh.sh](https://github.com/Brandhang34/dotfiles/tree/master/.ssh/gum_ssh.sh)
- [aws_profile.sh](https://github.com/brandhang34/dotfiles/tree/master/.aws/aws_acc.sh)

## Installation:
First, clone dotfiles repo in your $HOME directory
```
$ git clone git@github.com:Brandhang34/dotfiles.git $HOME/dotfiles
$ cd $HOME/dotfiles
```

### [stow](https://www.gnu.org/software/stow/):
I use stow to easily "copy" dotfiles to the machine. You can manually copy everything, 
but I find it easier to create symlinks. Run the following command to create the symlinks
```
$ stow .
```
