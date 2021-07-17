nerdfetch

# export
export PATH=$HOME/.local/bin:$PATH

## plugins
# Enable 'fast-syntax-highlighting
source /home/joe/.config/zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
# Load completion config
source /home/joe/.config/zsh/completion.zsh
# Enable 'zsh-autosuggestions' plugin in ZSH
source /home/joe/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# Enable 'history' config in ZSH
source /home/joe/.config/zsh/history.zsh
# Enable 'key-bindings' config in ZSH
source /home/joe/.config/zsh/key-bindings.zsh
# Enable Aliases
source /home/joe/.config/zsh/aliases.zsh
# Lazy Load NVM
source /home/joe/.config/zsh/zsh-nvm/zsh-nvm.plugin.zsh

# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

# NVM
# export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# starship.rs prompt
eval "$(starship init zsh)"
export PATH=/home/$USER/.config/nvcode/utils/bin:$PATH
