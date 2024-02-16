<h1 align="center">Welcome to dotfiles 👋</h1>
<p>
  <a href="https://www.npmjs.com/package/dotfiles" target="_blank">
    <img alt="Version" src="https://img.shields.io/npm/v/dotfiles.svg">
  </a>
  <a href="#" target="_blank">
    <img alt="License: AGPL--3.0" src="https://img.shields.io/badge/License-AGPL--3.0-yellow.svg" />
  </a>
</p>

> My dotfile configs

## Install

```sh
stow config && stow home
```

## Usage

```sh
git clone https://github.com/Artach-byte/dotfiles.git /home/$USER/dotfiles && cd /home/$USER/dotfiles
stow config && stow home
bat cache --build # this added new themes to bat
git clone https://github.com/alexanderjeurissen/ranger_devicons /home/$USER/.config/ranger/plugins/ranger_devicons #adds icons for ranger
```

## Programs Used
- zsh
    - plugins managed with zap : https://github.com/zap-zsh/zap
    - prompt is powerlevel10k : https://github.com/romkatv/powerlevel10k
    - fzf is a requirement for fzf-zsh plugin
- Lazygit for cli/tui -> https://github.com/jesseduffield/lazygit
- git-delta for cli diff visualization -> https://github.com/dandavison/delta
    - bat needed for colorscheme in git-dlta -> https://github.com/sharkdp/bat
- gh-cli -> https://cli.github.com/
- ranger
 - ranger devicons -> https://github.com/alexanderjeurissen/ranger_devicons
 - trash-cli -> https://github.com/andreafrancia/trash-cli
- bat for text preview
- Neovim
    - astronvim for easy config -> https://astronvim.com/
        - personal user config -> https://github.com/Artach-byte/astro-nvim-config
- bottom for system monitoring -> https://github.com/ClementTsang/bottom
- wezterm -> https://wezfurlong.org/wezterm/index.html
- tmux
  - tpm for plugin managment -> https://github.com/tmux-plugins/tpm
- lact for gpu config -> https://github.com/ilya-zlobintsev/LACT
- openrgb -> https://openrgb.org/ 
- cooler control for fans/aio -> https://gitlab.com/coolercontrol/coolercontrol

## Author

👤 **Joseph Hansen**

* Github: [@Artach-byte](https://github.com/Artach-byte)

## Show your support

Give a ⭐️ if this project helped you!

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
