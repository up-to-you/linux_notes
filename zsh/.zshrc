# PROMPT='%F{030}%n%f %F{042}%~%f -> '
# PROMPT='%F{051}%~%f ❯ '
PROMPT='%F{051}%~%f ❭ '

alias ll='ls -alG'
alias grep='grep --color=auto'

export EDITOR=nano
export VISUAL="$EDITOR"

# auto-suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# syntax-highlighting
source /Users/$USER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-completions
fpath=(/Users/$USER/zsh-completions/src $fpath)
# load completion module
autoload -Uz compinit && compinit

zstyle ':completion:*' menu select
# zstyle ':completion:*:default' list-colors '${(s.:.)LS_COLORS}'
zstyle ':completion:*' list-colors '=*=97' "ma=38;5;195;7"
# zstyle ':completion:*' list-colors '=*=97' "ma=48;7;23"
# zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")'
# zstyle ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")'
# zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS} "ma=48;5;153;1"
# LS_COLORS='no=00;37:fi=00:di=00;33:ln=04;36:pi=40;33:so=01;35:bd=40;33;01:'
# zstyle ":completion:*:default" list-colors ${(s.:.)LS_COLORS} "ma=48;5;20;1"
# zstyle ":completion:*:default" "ma=48;5;20;1"
