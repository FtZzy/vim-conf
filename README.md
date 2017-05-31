# vim-conf

It is my personal Vim configuration!



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

* ;; *<-->* <Esc>
* 0 *<-->* ^


### Navigation

* ,v *<-->* vertical split
* ,h *<-->* horizontal split
* ,t *<-->* new tab
* ,< *<-->* previous tab
* ,> *<-->* next tab


### NERDTree

* ,n *<-->* hide or display the NERDTree



# LICENSE
 Copyright (c) 2017 [Nathan Krupa](https://github.com/FtZzy)
