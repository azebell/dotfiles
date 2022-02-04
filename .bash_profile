# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
EDITOR=/usr/bin/vim
PS1="\[\e[1;36m\]\u@\h : \[\e[1;34m\]\w [\[\e[1;33m\]\$(parse_git_branch)\[\e[1;34m\]] \[\e[0m\]$ "

# setup host specific variables
THISHOST=$(hostname)
if [ "$THISHOST" = "blackheron" ]; then
	PS1="\[\e[1;32m\]\u@\h : \[\e[1;34m\]\w [\[\e[1;33m\]\$(parse_git_branch)\[\e[1;34m\]] \[\e[0m\]$ "
	export BASH_SILENCE_DEPRECATION_WARNING=1
fi
if [ "$THISHOST" = "condor" ]; then
	PS1="\[\e[1;33m\]\u@\h : \[\e[1;34m\]\w [\[\e[1;33m\]\$(parse_git_branch)\[\e[1;34m\]] \[\e[0m\]$ "
fi
if [ "$THISHOST" = "falcon" ]; then
	export CPLUS_INCLUDE_PATH="/usr/include"
    export LIBRARY_PATH="/usr/lib"
	PS1="\e[1;33m\u@\h : \e[1;34m\w [\e[1;33m\$(parse_git_branch)\e[1;34m] \e[0m$ "
fi

export PATH

