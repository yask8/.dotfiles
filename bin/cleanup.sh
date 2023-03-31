#!/bin/bash

#Removing the .vimrc directory
rm -r ~/.vimrc
#Modifying the source file
sed 's/source ∼ /.dotfiles/bashrc_custom//g'
#Removing trash directory
rm -r ~/.TRASH
