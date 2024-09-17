# My Dot files
These are my current dotfiles and configurations for my terminal. I am running on Fedora so some of the set alias 
in the .zshrc file could be different depending on the operating systems.

## Requirements:
---
Ensure you have the following installed on your system

### Terminal Tooling:
- [kitty terminal](https://github.com/kovidgoyal/kitty) : Terminal Emulator
- [helix](https://github.com/helix-editor/helix) : Text editor
- [tmux](https://github.com/tmux/tmux) : Terminal Multiplexer
- [zoxide](https://github.com/ajeetdsouza/zoxide) : Smart change directory
- [bat](https://github.com/sharkdp/bat) : Better version of cat
- [ripgrep](https://github.com/BurntSushi/ripgrep) : recursive search tool
- [eza](https://github.com/eza-community/eza) : ls with colors and icons
- [gum](https://github.com/charmbracelet/gum) : Tool for shell scripts
- [starship](https://github.com/starship/starship) : Nice looking shell prompt
- [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh) : bash but with plugins

### [stow](https://www.gnu.org/software/stow/):
I use stow to easily "copy" dotfiles to the machine. You can manually copy everything, 
but I find it easier to create symlinks.

## Installation:
First, clone dotfiles repo in your $HOME directory
```
$ git clone git@github.com:Brandhang34/dotfiles.git $HOME/dotfiles
$ cd $HOME/dotfiles
```

Then use GNU stow to create symlinks
```
$ stow .
```
