## Dependencies
- gnu stow
- tmux
- zsh
    - plugins managed with zap : https://github.com/zap-zsh/zap
    - prompt is powerlevel10k : https://github.com/romkatv/powerlevel10k
- Terms
    - wezterm - current primary term
    - alacritty - previous used term
    - kitty - previous used term
- bat
- ranger
- xplr
- zathura 
- newsboat

## How to implement dotfiles

```bash
git clone https://github.com/Artach-byte/dotfiles.git ~/ && cd ~/dotfiles/
stow config && stow home
bat cache --build # this added new themes to bat
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons #adds icons for ranger
```
