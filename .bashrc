#  __  __                          ____            _              
# |  \/  |                        |  _ \          | |             
# | \  / | __ _ _ __  _   ___  __ | |_) | __ _ ___| |__  _ __ ___ 
# | |\/| |/ _` | '_ \| | | \ \/ / |  _ < / _` / __| '_ \| '__/ __|
# | |  | | (_| | | | | |_| |>  <  | |_) | (_| \__ \ | | | | | (__ 
# |_|  |_|\__,_|_| |_|\__,_/_/\_\ |____/ \__,_|___/_| |_|_|  \___|

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Setting Bash prompt. Capitalizes username and host if root user (my root user uses this same config file).
if [ "$EUID" -ne 0 ]
	then export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
	else export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]ROOT\[$(tput setaf 2)\]@\[$(tput setaf 4)\]$(hostname | awk '{print toupper($0)}') \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
fi

[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/shortcutsrc" ] && source "$HOME/.config/shortcutsrc"
