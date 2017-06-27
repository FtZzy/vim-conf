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

You can drag line(s) with `<Ctrl>j` (down) or `<Ctrl>k` (down).


### Navigation

* `<leader>v` ~ vertical split
* `<leader>h` ~ horizontal split
* `<leader>t` ~ new tab
* `<leader><` ~ previous tab
* `<leader>>` ~ next tab


### NERDTree

* `<leader>n` ~ hide/display the [NERDTree](https://github.com/scrooloose/nerdtree)
* `<leader>f` ~ display the NERDTree at current file


### Git with [Vim-fugitive](http://github.com/tpope/vim-fugitive)

* `:Gwrite` ~ Add current file
* `:Gread` ~ Revert current file
* `:Gremove` ~ Delete current file
* `:Gmove` ~ Rename current file
* `:Gdiff` ~ Show difference between actual and last version for the current file
* And a lot of more, see them [here](http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/).


### NERDCommenter

* `<leader>cc` ~ comment in visual mode
* `<leader>c<space>` ~ comment/uncomment line(s)
* And a lot of more, see them [here](https://github.com/scrooloose/nerdcommenter).


### Bookmarks

* `mm` ~ Add/remove bookmark at the current line
* `mi` ~ Add/edit/remove annotation at current line
* `mn` ~ Next bookmark
* `mp` ~ Previous bookmark
* `mc` ~ Clear bookmarks
* And a lot of more, see them [here](https://github.com/MattesGroeger/vim-bookmarks).


### Snippets

[Snippets](https://github.com/honza/vim-snippets) are vailable for: Elixir, Falcon, HTML Django, Javascript, Markdown, PHP, Python, Ruby, Scala and Supercollider.

* `<tab>` ~ Expand trigger
* `<Ctrl>b` ~ Jump forward trigger
* `<Ctrl>g` ~ Jump backward trigger


### Python

I use [flake](https://github.com/andviro/flake8-vim) for check if the file is pep8 when we save it. I use also [jedi](https://github.com/davidhalter/jedi-vim).

* `<leader>g` ~ Go to assigments
* `<leader>d` ~ Go to definition
* `K` ~ Show documentation
* `<leader>r` ~ Rename
* `<leader>s` ~ Show usages



### Spell Checker

You can check the spell in vim.

* `<F6>` ~ French
* `<F7>` ~ English

For the both you get the options:

* `z=` ~ Display possible corrections
* `zg` ~ Add to dictionary
* `zug` ~ Cancel the addition
* `]s` ~ Next misspelled word
* `[s` ~ Previous misspelled word


### Others

* `<leader>u` ~ Display [UndoTree](https://github.com/mbbill/undotree)
* `+/_` ~ Grow/reduce the [expand-region](https://github.com/terryma/vim-expand-region)
* `<leader>-` ~ Fold between {}
* `<leader>w` ~ Delete trailing spaces



## TODO

* Fix solarized
* C++, scala, js, latex, markdown, ...
* Tagbar




# LICENSE
Copyright (c) 2017 [Krupa Nathan](https://github.com/FtZzy)
