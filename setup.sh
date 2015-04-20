#! /bin/bash
mkdir ~/github
mv ~/.bash_profile ~/.bash_profile.bak
ln -s ~/github/vinay_devenv/.bash_profile ~/.bash_profile
mv ~/.bashrc ~/.bashrc.bak
ln -s ~/github/vinay_devenv/.bashrc ~/.bashrc
mv ~/.alias ~/.alias.bak
ln -s ~/github/vinay_devenv/.alias ~/.alias
mv ~/.vimrc ~/.vimrc.bak
ln -s ~/github/vinay_devenv/.vimrc ~/.vimrc
mv ~/.gitconfig ~/.gitconfig.bak
ln -s ~/github/vinay_devenv/.gitconfig ~/.gitconfig
