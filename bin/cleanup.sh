#!/bin/bash

#Removing the .vimrc directory
rm -rf ~/.vimrc
#Modifying the source file
sed -n s/\source~*/\/g ~/.bashrc
#Removing trash directory
rm -rf ~/.TRASH
