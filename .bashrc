export LSCOLORS=ExGxFxDaCxDaDaAcAcAeEx

alias l="ls -FG"
alias ll="l -l"
alias la="l -A"
alias lla="l -lA"

case $TERM in
    xterm|xterm-color)
        PROMPT_COMMAND='echo -ne "\033]0;`hostname -s|tr "[:upper:]" "[:lower:]"`:${PWD/$HOME/~}\007"'
        ;;
esac

if [ "$PS1" ]; then
    export PS1='\[\033[1;32m\][\[\033[0m\]\u@`hostname -s|tr "[:upper:]" "[:lower:]"`:\w\[\033[1;32m\]]\$\[\033[0m\] '
fi

export EDITOR=vim

set -o vi
