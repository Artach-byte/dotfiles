# Dotfiles

This repository contains my personal configuration files for a range of terminal tools, editors, and utilities. The setup is designed to be portable, easy to manage, and distribution-agnostic. Configurations are organized and deployed using [GNU Stow](https://www.gnu.org/software/stow/) for a clean, modular structure across systems.

## Included Configurations

- **Shell & Terminal**:
  [zsh](https://github.com/zsh-users/zsh), [tmux](https://github.com/tmux/tmux), [zellij](https://github.com/zellij-org/zellij), [wezterm](https://github.com/wez/wezterm), [ghostty](https://github.com/ghostty-org/ghostty)

- **Utilities**:
  [atuin](https://github.com/atuinsh/atuin), [bat](https://github.com/sharkdp/bat), [btop](https://github.com/aristocratos/btop), [cava](https://github.com/karlstav/cava), [ranger](https://github.com/ranger/ranger), [yazi](https://github.com/sxyazi/yazi), [zathura](https://pwmt.org/projects/zathura/), [starship](https://starship.rs/)

- **Editors**:
  [helix](https://github.com/helix-editor/helix), [zed](https://github.com/zed-industries/zed)

- **Misc**:
  [scopebuddy](https://github.com/HikariKnight/ScopeBuddy)

## Features

- Managed with [GNU Stow](https://www.gnu.org/software/stow/) for simple and clean symlink-based configuration
- Installation script that:
  - Checks for and missing dependencies.
  - Installs [zap](https://github.com/zap-zsh/zap) a zsh plugin manager
  - Downloads and installs Nerd Fonts using [`getnf`](https://github.com/ronniedroid/getnf)
- Designed to work across a variety of Linux distributions and Unix-like systems

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Artach-byte/dotfiles.git /home/$USER/dotfiles
   ```
2. Change Directory:
   ```bash
   cd dotfiles
   ```
3. Make scipt is executable && run script:
   ```bash
   sudo chmod u+x install.sh
   ./install.sh
   ```
