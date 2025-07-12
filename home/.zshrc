# Powerlevel10k instant prompt (keep at the top)
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# History config
export HISTFILE=~/.config/zsh/zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000

setopt EXTENDED_HISTORY HIST_EXPIRE_DUPS_FIRST HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS HIST_IGNORE_DUPS HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS SHARE_HISTORY

# If you want to ignore specific commands from history, use zshaddhistory
zshaddhistory() {
  [[ $1 == (ls|clear|cd|pwd|exit|history|cat|..|cd\ -|cd\ ..)* ]] && return 1
  return 0
}

# Misc config
setopt AUTO_CD AUTO_NAME_DIRS AUTO_PUSHD CDABLE_VARS
setopt EXTENDED_GLOB GLOB_DOTS INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST NOTIFY PROMPT_SUBST
setopt PUSHD_IGNORE_DUPS PUSHD_SILENT

# Path for LinuxBrew and Cargo (Linuxbrew first for priority)
export PATH="$HOME/.linuxbrew/bin:$HOME/.cargo/bin:$PATH"

# Remove vi mode
bindkey -e

# Completion
autoload -Uz compinit
compinit

# Aliases and fzf theme
source ~/.config/zsh/aliases.zsh
source ~/.config/zsh/fzf-themes.zsh

# Plugins (Zap)
if [ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ]; then
  source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
  plug 'Aloxaf/fzf-tab'
  plug "zsh-users/zsh-autosuggestions"
  plug "romkatv/powerlevel10k"
  plug "hlissner/zsh-autopair"
  plug 'sudosubin/zsh-github-cli'
  plug '3v1n0/zsh-bash-completions-fallback'
  plug 'bilelmoussaoui/flatpak-zsh-completion'
  plug "zsh-users/zsh-syntax-highlighting" # Always last
fi

# fzf-tab config
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup

# Atuin
eval "$(atuin init zsh)"

# Completion menu
zstyle ':completion:*' menu select
fpath+=~/.zfunc

# Powerlevel10k prompt
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
