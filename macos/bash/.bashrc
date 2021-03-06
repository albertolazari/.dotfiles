#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color'
alias ll='ls -l'
alias l='ls -al'
alias less='less -r'

PS1='\[\e[1;32m\]\u'
PS1+='\[\e[0m\]@'
PS1+='\[\e[0m\]\h '
PS1+='\[\e[1;36m\]\w '
PS1+='\[\e[0m\]$ '
export PS1


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
