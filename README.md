# My Dot files
These are my current dotfiles and configurations for my terminal. I am running on Fedora so some of the set alias 
in the config.fish file could be different depending on the operating systems.

---
### Terminal Tooling:
These are the following terminal tools that I have installed
- [kitty terminal](https://github.com/kovidgoyal/kitty) : Terminal Emulator
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

---
### Text Editor:
I'm currently using [Helix](https://github.com/helix-editor/helix) as my main text editor and there are some extra configurations.
- Copilot integration with [helix-gpt](https://github.com/leona/helix-gpt?tab=readme-ov-file)
  - Requires environment variables(HANDLER and COPILOT_API_KEY) which is stored in the env_variables.fish file. The config.fish 
  should source the file and all of the environment variables should be set
- Automatically launch preview using [markdown-preview](https://github.com/helix-editor/helix/issues/2824#issuecomment-1191892103)
- The [languages.toml file](https://github.com/helix-editor/helix/blob/master/languages.toml) has mostly been taken from the helix github

---
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
