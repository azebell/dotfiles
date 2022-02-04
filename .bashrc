# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Git autocompletion script
source ~/.git-completion.bash

parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

alias ls="ls --color=auto"
alias ll="ls -l --group-directories-first"
alias llr="ls -l -R --group-directories-first"

alias vimm="vim -O"

alias jpn="jupyter notebook"

alias paste="powershell -command 'Get-Clipboard'"

alias adminshell="powershell -Command 'Start-Process PowerShell -Verb RunAs'"

alias tree='find . -not -path "*/\.*" | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/"'

alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

