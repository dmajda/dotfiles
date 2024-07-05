# ===== Antigen =====

source ~/.zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle docker

antigen theme romkatv/powerlevel10k

antigen apply

# ===== Configure Powerlevel10k =====

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ===== Configure GPG =====

export GPG_TTY=$(tty)

# ===== Use rbenv =====

eval "$(rbenv init - zsh)"

# ===== Use pyenv =====

eval "$(pyenv init - zsh)"

# ===== Use nvm =====

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

