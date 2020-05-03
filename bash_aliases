echo "Loading .bash_aliases"

# make shell vim-like
set -o vi

export PAGER=less

alias hist="history"
alias python="python3"

alias vim="nvim"
alias vi="nvim"

alias night="sudo shutdown now"

alias htpc="ssh htpc@192.168.0.4"

# mkdir and cd wrapped in one command
mkcdir ()
{
    mkdir -p -- "$1" &&
      cd -P -- "$1"
}

# export function `mkcdir` as a command line executable
export -f mkcdir

alias findSrc="find ${PWD} -type f -regex \".*\.\(c\|h\|hpp\|cpp\|cc\|hh)$\""
