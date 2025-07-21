#!/usr/bin/env bash
################################################################################
#                           History config                                     #
################################################################################

export HISTFILE=~/.config/zsh/zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTORY_IGNORE="(ls|clear|smi|mi3|cd3|zz|cds|cdc|idrive|ch|cd|pwd|smi|cdx|msx|mdx|cc|xx|exit|cat|msx|cdw|cdi|..|history|cd -|cd ..)"

################################################################################
#                             Misc config                                      #
################################################################################

# Path for cargo
export PATH=/home/joe/.cargo/bin/:$PATH

# Path for Brew
export PATH=/home/linuxbrew/.linuxbrew/bin/:$PATH

# remove vi mode
bindkey -e

# completion
autoload -Uz compinit
compinit -C

# Alias config
source ~/.config/zsh/aliases.zsh

# fzf theme config
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1E1E2E,spinner:#F5E0DC,hl:#F38BA8 \
--color=fg:#CDD6F4,header:#F38BA8,info:#CBA6F7,pointer:#F5E0DC \
--color=marker:#B4BEFE,fg+:#CDD6F4,prompt:#CBA6F7,hl+:#F38BA8 \
--color=selected-bg:#45475A \
--color=border:#313244,label:#CDD6F4"

# carapace completions
export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

################################################################################
#                                 Plugins Start                                #
################################################################################

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug 'Aloxaf/fzf-tab'
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"

################################################################################
#                              Plugins End                                     #
################################################################################
zstyle ':fzf-tab:*' fzf-flags ${(z)FZF_DEFAULT_OPTS}

eval "$(starship init zsh)"
eval "$(atuin init zsh)"

zstyle ':completion:*' menu select
fpath+=~/.zfunc
