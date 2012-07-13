# ===== Appearance =====

# Push terminal look out of stone age
export TERM=xterm-256color

# ===== Aliases =====

# Workaround for https://bugs.launchpad.net/vim/+bug/402188
alias gvim='gvim 2>/dev/null'

# ===== Configure oh-my-zsh =====

ZSH=$HOME/.oh-my-zsh            # Path to oh-my-zsh configuration

ZSH_THEME="gallifrey"           # Set theme
plugins=(command-not-found git) # Set loaded plugins

source $ZSH/oh-my-zsh.sh        # Load oh-my-zsh
