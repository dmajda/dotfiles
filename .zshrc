# ===== Antigen =====

source ~/.zsh/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle docker

antigen theme romkatv/powerlevel10k

antigen apply

# ===== Configure Powerlevel10k =====

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ===== Use version managers =====

eval "$(rbenv init - zsh)"
eval "$(nodenv init - zsh)"

# ===== Source additional files =====

if [ -d ~/.zshrc.d ]; then
  for file in ~/.zshrc.d/*.zsh(N); do
    source $file
  done
fi
