# ===== Antigen =====

source ~/.zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle docker

antigen theme romkatv/powerlevel10k

antigen apply

# ===== Configure Powerlevel10k =====

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ===== Use rbenv =====

eval "$(rbenv init - zsh)"

# ===== Use pyenv =====

eval "$(pyenv init - zsh)"

# ===== Use nodenv =====

eval "$(nodenv init - zsh)"
