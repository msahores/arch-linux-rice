#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PS1="\[\e[38;5;82m\][\[\e[m\]\[\e[38;5;82m\]\u\[\e[m\]\[\e[38;5;82m\]@\[\e[m\]\[\e[38;5;82m\]\h\[\e[m\]\[\e[38;5;82m\]\W\[\e[m\]\[\e[38;5;82m\]]\[\e[m\]\\$ "