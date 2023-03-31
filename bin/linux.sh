#!/bin/bash

if (( uname != "Linux" )); then
	echo "Error: They do not match" >>  ./linuxsetup.log
	exit
fi

if (( uname = "Linux" )); then
	echo "They match"
fi

mkdir -p ~/.TRASH
mkdir -p ~/.vimrc
echo "The current .vimrc file was changed to .bup_vimrc"
~/.dotfiles/etc/vimrc > ~/.vimrc
source ~/.dotfiles/etc/bashrc_custom >> ~/.bashrc


