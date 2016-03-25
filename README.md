vinay_devenv
============

Use the setup script.

mkdir ~/github
Copy the repo to ~/github
Install rbenv

* Bash
------
* **OSX:**

ln -s ~/github/vinay_devenv/.bash_profile ~/.bash_profile

ln -s ~/github/vinay_devenv/.alias ~/.alias

* **Linux:**

ln -s ~/github/vinay_devenv/.bashrc ~/.bashrc

ln -s ~/github/vinay_devenv/.alias ~/.alias

* VIM
-----

* Install silversearcher

https://github.com/ggreer/the_silver_searcher/downloads

Get this version: the-silver-searcher_0.7.3-3_amd64.deb The Silver Searcher 0.7.3 x86-64 for Ubuntu 12.04.

sudo dpkg -i the-silver-searcher_0.7.3-3_amd64.deb

* Install Vundle

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* Use the vimrc with awesome plugins

ln -s ~/github/vinay_devenv/.vimrc ~/.vimrc

vim
:PluginInstall

* Install YouCompleteMe

cd ~/.vim/bundle/YouCompleteMe

./install.sh --clang-completer

cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py ~


* GIT
-----
ln -s ~/github/vinay_devenv/.gitconfig ~/.gitconfig


* Java
------

Jenv https://github.com/gcuisinier/jenv

git clone https://github.com/gcuisinier/jenv.git ~/.jenv

echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> ~/.bash_profile

echo 'eval "$(jenv init -)"' >> ~/.bash_profile
