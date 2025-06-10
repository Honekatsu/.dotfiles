#-----------------------------------------------------------
HISTFILE=${HOME}/.zsh_history # コマンド履歴ファイル
export HISTSIZE=1000 # 今のセッションで履歴を保存する数
export SAVEHIST=1000 # ファイルに履歴を保存する数
setopt print_eight_bit # 日本語を表示できるように
setopt share_history # コマンド履歴を共有
setopt hist_ignore_space # spaceで始まる履歴を除外
setopt hist_no_store # historyコマンドを履歴から除外


PS1="%F{green}%n@%m:%~%f$ " # 現在のディレクトリを表示

#入力補完
plugins=(
    zsh-autosuggestions
)

export EDITOR=vim

export PATH="$PATH:$HOME/.local/bin"
eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

#alias
alias ls='eza'

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

zinit ice wait'0'; zinit light zsh-users/zsh-completions
autoload -Uz compinit && compinit

# Zinit plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

### End of Zinit's installer chunk

#---------------------------------------
