# homebrew
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# pyenv
eval "$(pyenv init -)"

# rbenv
eval "$(rbenv init -)"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zoxide
eval "$(zoxide init zsh)"
