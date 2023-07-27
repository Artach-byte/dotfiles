# Aliases for ZSH
alias zshreload='source ~/.zshrc' # reload ZSH

# back directory
alias ..='cd ..'

# ls
alias ls='ls --color'

# opensuse update/flatpak upate
# WARNING: Not best practice but i am lazy
# BUG: flatpak wont update without -y, idk why though
alias zz='sudo zypper ref && sudo zypper dup && sudo flatpak update -y && sudo zypper clean'

# lazygit
alias lg='lazygit'
