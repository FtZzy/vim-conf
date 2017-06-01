# vim-conf

It is my personal Vim configuration _with comments in french_!
Inspired by Vincent Jousse (thanks his book *vim pour les humains*) and by [Charles Gueunet](https://github.com/CharlesGueunet) but simplified.



## INSTALL

First, remove your old `.vim` and `.vimrc`.
```
$ cd ~  
$ git clone --recursive https://github.com/FtZzy/vim-conf.git .vim  
$ ln -sf .vim/.vimrc .
```
By default ctags use zsh if it is installed, else use bash.


### Vundle

I use [Vundle](https://github.com/VundleVim/Vundle.vim) (_Vim Bundle_) so you need it.

1. `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. Launch `vim` and run `:PluginInstall`

More informations on [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim).



## USE

My **leader key is ','** but you can change it in `.vimrc`.


### Global shorcuts

* ;; ~ Esc
* 0 ~ ^
* Mouse is activated



### Navigation

* ,v ~ vertical split
* ,h ~ horizontal split
* ,t ~ new tab
* ,< ~ previous tab
* ,> ~ next tab


### NERDTree

* ,n ~ hide/display the NERDTree
* ,f ~ display the NERDTree at current file



# LICENSE
Copyright (c) 2017 [Krupa Nathan](https://github.com/FtZzy)
