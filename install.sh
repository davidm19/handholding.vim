#!/bin/bash

# If gvim don't exist, prompt user and exit with fail status
if [[ $(which gvim) == "" ]]; then
	echo "You don't have gvim installed. That's kinda counter-intuitive to installing a gvim setup, don't you think?"
	exit 1
fi

# If git isn't insalled, prompt user and exit with fail
if [[ $(which git) == "" ]]; then
	echo "Git is needed to install Vundle. Also, how did you get your hands on this script anyways if you didn't have git? Hopefully you didn't steal it from me..."
	exit 1
fi

# If ctags isn't insalled, prompt user and exit with fail
if [[ $(which ctags) == "" ]]; then
	echo "Ctags is needed for the vim-ctags plugin."
	exit 1
fi

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copy gvimrc and install plugins
cp gvimrc ~/.gvimrc
gvim +PluginInstall +qall

# Ta-da.
echo "You're done. Now delete this and make your own vimrc."
