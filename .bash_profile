# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
EDITOR=/usr/bin/vim

# setup host specific variables
THISHOST=$(hostname)
if [ "$THISHOST" = "blackheron" ]; then
	export BASH_SILENCE_DEPRECATION_WARNING=1
	HOSTCOLOR="32" # green
	PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
	PATH="/opt/homebrew/bin:${PATH}"
	alias ls="gls --color=auto"
fi
if [ "$THISHOST" = "condor" ]; then
	HOSTCOLOR="33" # yellow
fi
if [ "$THISHOST" = "falcon" ]; then
	export CPLUS_INCLUDE_PATH="/usr/include"
    export LIBRARY_PATH="/usr/lib"
	HOSTCOLOR="33" # yellow
fi

PS1="\[\e[1;${HOSTCOLOR}m\]\u@\h : \[\e[1;34m\]\w [\[\e[1;33m\]\$(parse_git_branch)\[\e[1;34m\]] \[\e[0m\]$ "

export PATH

