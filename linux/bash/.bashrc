#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color'
alias ll='ls -l'
alias l='ls -al'
alias less='less -r'

PATH=$PATH':/home/alberto/dev/Cpp-Project-Creator/Bash'
export PATH

PS1='\[\e[1;36m\]\u'
PS1+='\[\e[0m\]@'
PS1+='\[\e[0m\]\h '
PS1+='\[\e[1;32m\]\w '
PS1+='\[\e[0m\]$ '
export PS1

neofetch
