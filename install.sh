#!/usr/bin/env bash

# vars
missing=()

# var for required packages
packages=(
  "stow"
  "zsh"
  "bat"
  "fzf"
  "btop"
  "yazi"
  "zellij"
  "rg" # ripgrep
  "tmux"
  "fd"
  "hx" # helix editor
  "ugrep"
  "nvim"
  "atuin"
  "trash"
  "carapace"
)

# check for missing packages
for pkg in "${packages[@]}"; do
  if ! command -v "$pkg" >/dev/null 2>&1; then
    missing+=("$pkg")
  fi
done

if [ ${#missing[@]} -eq 0 ]; then
  echo "all packages installed"
  echo ""
  read -rp "Do you wish to continue [y/N]: " confirm
  echo ""
  [[ "$confirm" =~ ^[Yy]$ ]] || exit 1
else
  # Print missing packages
  echo "The following packages are missing"
  printf ' - %s\n' "${missing[@]}"
fi

# create symlinks with stow
# --adopt allows for overwriting
echo "Generating symlinks with stow"
echo ""
stow --adopt config
stow --adopt home

# refreshing batconfig for installed themes
read -rp "Would you like to add themes to Bat [y/N]: " confirm
[[ "$confirm" =~ ^[Yy]$ ]]
bat cache --build
echo ""

# Install zap plugin manager for zsh
echo "Now installing zap zsh plugin manager"
zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 -k
echo ""

# Font Install
echo "Would you like to install fonts with getnf?"
read -rp "[y/N]: " confirm
[[ "$confirm" =~ ^[Yy]$ ]] || exit 1
echo ""
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash
getnf
echo ""
echo "Dotfile setup finished"

exit 0
