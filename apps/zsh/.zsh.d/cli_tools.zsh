#alias
## ls
alias ls='eza'

alias ll='ls -lg'
alias lla='ls -lag'
abbr -S ll='ls -lg' > /dev/null
abbr -S lla='ls -lag' > /dev/null

## lazygit
alias lg='lazygit'
abbr -S lg='lazygit' > /dev/null

#PATH
export PATH="$HOME/.bun/bin:$PATH"

#hooks
eval "$(direnv hook zsh)"
