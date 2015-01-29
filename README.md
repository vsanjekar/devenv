vinay_devenv
============

* Install rbenv

* Copy the repo home/git

* Bash
------
* **OSX:**

ln -s ~/git/vinay_devenv/.bash_profile ~/.bash_profile

ln -s ~/git/vinay_devenv/.alias ~/.alias

* **Linux:**

ln -s ~/git/vinay_devenv/.bashrc ~/.bashrc

ln -s ~/git/vinay_devenv/.alias ~/.alias

* VIM
-----

* Install silversearcher

https://github.com/ggreer/the_silver_searcher/downloads

Get this version: the-silver-searcher_0.7.3-3_amd64.deb The Silver Searcher 0.7.3 x86-64 for Ubuntu 12.04.

sudo dpkg -i the-silver-searcher_0.7.3-3_amd64.deb

* Install Vundle

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* Use the vimrc with awesome plugins

ln -s ~/git/vinay_devenv/.vimrc ~/.vimrc

vim
:PluginInstall


* GIT
-----
ln -s ~/git/vinay_devenv/.gitconfig ~/.gitconfig
