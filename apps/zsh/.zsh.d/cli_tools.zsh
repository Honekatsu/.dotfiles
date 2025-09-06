#alias
## ls
alias ls='eza'

alias ll='ls -l'
alias lla='ls -la'
abbr -S ll='ls -l' > /dev/null
abbr -S lla='ls -la' > /dev/null

## lazygit
alias lg='lazygit'
abbr -S lg='lazygit' > /dev/null

#PATH
export PATH="$HOME/.bun/bin:$PATH"

#hooks
eval "$(direnv hook zsh)"
