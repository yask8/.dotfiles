#!/bin/bash

#Comparing uname to linux
CURR_DIR=$(pwd)
CURR_OS=$(uname)

#Sanity check
if [[ "CURR_OS" != *"Linux"* ]]; then
	echo "ERROR --> Incorrect OS detected for this target!" >> 'linuxsetup.log'
	exit
fi

if [["CURR_OS" = *"Linux"* ]]; then
	echo "Correct OS detected for this target!" >> 'linuxsetup.log'
	exit
fi

#Making .trash directory and .vimrc
if [[ -f "~/.vimrc" ]]; then
	mkdir ~/.bup_vimrc
	cp ~/.vimrc ~/.bup_vimrc
	echo "The current .vimrc file was changed to .bup_vimrc" >> 'linuxsetup.log'
	#Deleting old directory
	rm ~/.vimrc
fi
if [[-f "~/.TRASH" ]]; then
	mkdir ~/.TRASH
fi
#Overwriting vimrc to the .virmc
./etc/vimrc > ~/.vimrc
#Overwriting the bashrc_custom to the .bashrc
source ~/.dotfiles/etc/bashrc_custom >> ~/.bashrc
