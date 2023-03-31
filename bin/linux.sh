#!/bin/bash

#Comparing uname to linux
if (( uname != "Linux" )); then
	echo "Error: They do not match" >>  ./linuxsetup.log
	exit
fi

if (( uname = "Linux" )); then
	echo "They match"
fi

#Making .trash directory and .vimrc
mkdir -p ~/.TRASH
mkdir -p ~/.vimrc
echo "The current .vimrc file was changed to .bup_vimrc"
#Overwriting vimrc to the .virmc
~/.dotfiles/etc/vimrc > ~/.vimrc
#Overwriting the bashrc_custom to the .bashrc
source ~/.dotfiles/etc/bashrc_custom >> ~/.bashrc


