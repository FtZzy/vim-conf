# vim-conf

It is my personal Vim configuration _with comments in french_! I use Vim in _Terminator_ and with `zsh`.

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

* `;;` ~ `<Esc>`
* `0` ~ `^`
* Mouse is activated


### Drag lines

You can drag line(s) with `<Ctrl>j` (down) or `<Ctrl>k` (down).


### Navigation

* `<leader>v` ~ vertical split
* `<leader>h` ~ horizontal split
* `<leader>t` ~ new tab
* `<leader><` ~ previous tab
* `<leader>>` ~ next tab


### NERDTree

* `<leader>n` ~ hide/display the NERDTre
* `<leader>f` ~ display the NERDTree at current file


### Vim-fugitive

* `:Gwrite` ~ Add current file
* `:Gread` ~ Revert current file
* `:Gremove` ~ Delete current file
* `:Gmove` ~ Rename curent file
* `:Gdiff` ~ Show difference between actual and last version for the current file
* And a lot of more, see them [here](http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/).


### NERDCommenter

* `<leader>cc` ~ comment in visual mode
* `<leader>c<space>` ~ comment/uncomment line(s)
* And a lot of more, see them [here](https://github.com/scrooloose/nerdcommenter).


### Snippets

Available for: Elixir, Falcon, HTML Django, Javascript, Markdown, PHP, Python, Ruby, Scala and Supercollider.

* `<tab>` ~ Expand trigger
* `<Ctrl>b` ~ Jump forward trigger
* `<Ctrl>g` ~ Jump backward trigger



## TODO

* Fix solarized
* Delete/show whitespace at the end of files
* C++ & Js




# LICENSE
Copyright (c) 2017 [Krupa Nathan](https://github.com/FtZzy)
