#!/bin/bash


rm -r ~/.vimrc
sed 's/source ∼ /.dotfiles/bashrc_custom//g'
rm -r ~/.TRASH
