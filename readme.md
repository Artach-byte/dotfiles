# About
## System
- Distro -> pop!_os
- Desktop environment -> gnome with pop-shell
- system theme -> catppuccin -> https://github.com/catppuccin/catppuccin

## Dependencies for implementing dotfiles
- gnu stow
    - needed to manage dotfiles and symlinks

## CLI

### Shell
- zsh
    - plugins managed with zap : https://github.com/zap-zsh/zap
    - prompt is powerlevel10k : https://github.com/romkatv/powerlevel10k
    - fzf is a requirement for fzf-zsh plugin

### git
- Lazygit for cli/tui -> https://github.com/jesseduffield/lazygit
- git-delta for cli diff visualization -> https://github.com/dandavison/delta
    - bat needed for colorscheme in git-dlta -> https://github.com/sharkdp/bat
- gh-cli -> https://cli.github.com/

### Filemanger
- ranger
    - bat for text preview
    - ranger devicons -> https://github.com/alexanderjeurissen/ranger_devicons
    - wezterm is needed for img preview

### Text editor
- Neovim
    - astronvim for easy config -> https://astronvim.com/
        - personal user config -> https://github.com/Artach-byte/astro-nvim-config

### Misc
- newsboat for rss feeds -> https://newsboat.org/
- nvtop for gpu monitoring -> https://github.com/Syllo/nvtop
- btop for system monitoring -> https://github.com/aristocratos/btop
- qemu/kvm for virtual machines

### Terminal Multiplexer
- tmux
  - tpm for plugin managment -> https://github.com/tmux-plugins/tpm

## GUI

### Terminal
- wezterm -> https://wezfurlong.org/wezterm/index.html

### Browser
- Firefox
    - Extensions used
        - ublock origin
        - darkreader
        - stylus
        - augmented steam
        - refined github
        - awesome rss
### Communication
- thunderbird for email/rss -> https://www.thunderbird.net/en-US/
    - Extensions used:
        - dark reader
        - ublock origin
- discord
- zoom

### Text editor
- VS Code -> https://code.visualstudio.com/

### Note taking
- Obsidian -> https://obsidian.md/

### Media
- okular for pdfs
- calibre for ebooks
- mpv for videos
- spotify for music/podcasts
- Komikku for manga -> https://gitlab.com/valos/Komikku

### Game stuff
- Steam
- Lutris
- heroic games luancher
- protonup-qt for custom proton

### Misc
- corectrl for gpu -> https://gitlab.com/corectrl/corectrl
- openrgb -> https://openrgb.org/ 
- cooler control for fans/aio -> https://gitlab.com/coolercontrol/coolercontrol
- piper for mouse -> https://github.com/libratbag/piper
- vorta/borg for backups -> https://github.com/borgbase/vorta

# How to implement dotfiles

```bash
git clone https://github.com/Artach-byte/dotfiles.git ~/ && cd ~/dotfiles/
stow config && stow home
bat cache --build # this added new themes to bat
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons #adds icons for ranger
```
