#!/usr/bin/env bash

# vars
missing=()
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
    "ranger"
)

# check for missing packages
for prog in "${packages[@]}"; do
    if ! command -v "$prog" >/dev/null 2>&1; then
        missing+=("$prog")
    fi
done

# dotfile setup if all packages are installed
if [ ${#missing[@]} -eq 0 ]; then
    echo "all packages installed"
    stow config && stow home
    bat cache --build
    zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 -k
    exit 0
fi

# Print missing packages
echo "The following packages are missing"
printf ' - %s\n' "${missing[@]}"

# User input
read -rp "Do you wish to install[y/N]" confirm
[[ "$confirm" =~ ^[Yy]$ ]] || exit 1

# Discover system package manager
if command -v brew >/dev/null 2>&1; then
    pkg_mgr="brew"
    install_cmd="brew install"
    elif command -v pacman >/dev/null 2>&1; then
    pkg_mgr="pacman"
    install_cmd="sudo pacman -Sy --noconfirm"
    elif command -v apt >/dev/null 2>&1; then
    pkg_mgr="apt"
    install_cmd="sudo apt update && sudo apt install -y"
else
    echo "Unsupported package manager"
    exit 1
fi

# install packages with pkg manager
echo "Using $pkg_mgr to install: ${missing[*]}"
eval "$install_cmd ${missing[*]}"