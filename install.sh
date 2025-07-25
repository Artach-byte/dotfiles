#!/usr/bin/env bash

missing=()

programs=(
    "stow"
    "zsh"
    "bat"
    "fzf"
    "starship"
    "atuin"
    "btop"
    "yazi"
    "zellij"
    "rg" # ripgrep
    "tmux"
    "fd"
    "hx" # helix editor
    "ugrep"
    "zoxide"
    "zed" # gui zed editor
)


# check for missing programs
for prog in "${programs[@]}"; do
    if ! command -v "$prog" >/dev/null 2>&1; then
        missing+=("$prog")
    fi
done

# dotfile setup
if [ ${#missing[@]} -eq 0 ]; then
    echo "all programs installed"
    stow config && stow home
    bat cache --build
    zsh <(curl -s https://raw.githubusercontent.com/zap-zsh/zap/master/install.zsh) --branch release-v1 -k
else
    echo "The following programs are not installed:"
    printf ' - %s\n' "${missing[@]}"
    exit 0
fi
# TODO add auto install for missing programs