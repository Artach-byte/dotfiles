## Dependencies
- gnu stow
- tmux
- zsh
    - plugins are manually added:
        - fzf-tab : https://github.com/Aloxaf/fzf-tab
            - fzf needs to be installed on system
        - zsh-autosuggestions : https://github.com/zsh-users/zsh-autosuggestions
        - zsh-autopair : https://github.com/hlissner/zsh-autopair
        - zsh-fzf-history-search : https://github.com/joshskidmore/zsh-fzf-history-search
        - zsh-z : https://github.com/agkozak/zsh-z
        - completion for gh-cli : https://github.com/sudosubin/zsh-github-cli
        - Powerlevel10k prompt : https://github.com/romkatv/powerlevel10k
        - syntax highlighting : https://github.com/zsh-users/zsh-syntax-highlighting 
- Terms
    - wezterm - current primary term
    - alacritty - previous used term
    - kitty - previous used term
- bat
- ranger
- xplr
- zathura 
- newsboat

## How to implement dotfiles with stow

```bash
git clone https://github.com/Artach-byte/dotfiles.git ~/ && cd ~/dotfiles/
stow config && stow home
bat cache --build # this added new themes to bat
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons #adds icons for ranger
```
