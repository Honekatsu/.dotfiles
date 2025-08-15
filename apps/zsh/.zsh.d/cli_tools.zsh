#alias
alias ls='eza'

alias ll='ls -l'
alias lla='ls -la'
alias lg='lazygit'

abbr -S ll='ls -l' > /dev/null
abbr -S lla='ls -la' > /dev/null
abbr -S lg='lazygit' > /dev/null

#PATH
export PATH="$HOME/.bun/bin:$PATH"
