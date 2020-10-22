# docker completion
# ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion /usr/local/share/zsh/site-functions/_docker-machine
# ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion /usr/local/share/zsh/site-functions/_docker
# ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion /usr/local/share/zsh/site-functions/_docker-compose

# PROMPT='%F{030}%n%f %F{042}%~%f -> '
# PROMPT='%F{051}%~%f ❯ '
PROMPT='%F{051}%~%f ❭ '

alias ll='ls -alG'
alias grep='grep --color=auto'
alias bat="bat -p --paging=never --theme='Solarized (dark)'"

export EDITOR=nano
export VISUAL="$EDITOR"
export PYTHONPATH=/usr/local/bin/python3

ZSH_AUTOSUGGEST_USE_ASYNC=1
# for match_prev_cmd - check options, must be unset:
# unsetopt | grep -e "histexpiredupsfirst\|histignoredups\|histignorealldups"
ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd)
# auto-suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# syntax-highlighting
source /Users/$USER/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# zsh-completions
fpath=(/Users/$USER/zsh-completions/src $fpath)
# load completion module
autoload -Uz compinit && compinit -i

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

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
