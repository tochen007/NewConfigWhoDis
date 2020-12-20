echo "Loading .bash_aliases"

# make shell vim-like
set -o vi

# set nvim as default editor
export EDITOR=nvim
export VISUAL=nvim

export PAGER=less

alias hist="history"
alias python="python3"

alias vim="nvim"
alias vi="nvim"

alias night="sudo shutdown now"

alias htpc="ssh -Y htpc@192.168.0.4"

# export function `mkcdir` as a command line executable
export -f mkcdir

alias findSrc="find $PWD -type f -regex \".*\.\(c\|h\|hpp\|cpp\|cc\|hh\)$\""

export FZF_DEFAULT_COMMAND="fd ."
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
