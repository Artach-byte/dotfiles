################################################################################
#                           Instant Prompt                                     #
################################################################################

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

################################################################################
#                           History config                                     #
################################################################################

export HISTFILE=~/.config/zsh/zsh_history
export HISTSIZE=1000000
export SAVEHIST=1000000
export HISTORY_IGNORE="(ls|clear|smi|mi3|cd3|zz|cds|cdc|idrive|ch|cd|pwd|smi|cdx|msx|mdx|cc|xx|exit|cat|msx|cdw|cdi|..|history|cd -|cd ..)"

setopt EXTENDED_HISTORY       # Write the history file in the ':start:elapsed;command' format.
setopt HIST_EXPIRE_DUPS_FIRST # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS      # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS   # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS       # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE      # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS      # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY          # Share history between all sessions.

################################################################################
#                             Misc config                                      #
################################################################################

setopt AUTO_CD              # Go to folder path without using cd.
setopt AUTO_NAME_DIRS       # Any parameter that is set to the absolute name of a directory immediately becomes a name for that directory
setopt AUTO_PUSHD           # Push the old directory onto the stack on cd.
setopt CDABLE_VARS          # Change directory to a path stored in a variable.
setopt EXTENDED_GLOB        # Use extended globbing syntax.
setopt GLOB_DOTS            # Do not require a leading ‘.’ in a filename to be matched explicitly.
setopt INTERACTIVE_COMMENTS # Allow comments even in interactive shells
setopt MAGIC_EQUAL_SUBST    # All unquoted arguments of the form ‘anything=expression’ appearing after the command name have filename expansion
setopt NOTIFY               # Report the status of background jobs immediately, rather than waiting until just before printing a prompt.
setopt PROMPT_SUBST         # If set, parameter expansion, command substitution and arithmetic expansion are performed in prompts.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

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

################################################################################
#                                 Load Zap                                     #
################################################################################

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] \
    && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

################################################################################
#                                 Plugins                                #
################################################################################

plug 'Aloxaf/fzf-tab'
  zstyle ':fzf-tab:*' fzf-flags ${(z)FZF_DEFAULT_OPTS}
  
# plug "joshskidmore/zsh-fzf-history-search"

plug "zsh-users/zsh-autosuggestions"

plug "hlissner/zsh-autopair"

plug "zsh-users/zsh-completions"
  fpath=(~/.local/share/zap/plugins/zsh-completions/src $fpath)

plug "romkatv/powerlevel10k"

plug "zsh-users/zsh-syntax-highlighting" #NOTE: Keep this plugin last


################################################################################
#                           End  Misc Evals                                    #
################################################################################

eval "$(atuin init zsh)"

export CARAPACE_BRIDGES='zsh,fish,bash,inshellisense' # optional
zstyle ':completion:*' format $'\e[2;37mCompleting %d\e[m'
source <(carapace _carapace)

################################################################################
#                              Prompt                                          #
################################################################################

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
