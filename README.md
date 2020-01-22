# README for vim-conf

It is my personal Vim configuration _with comments in french_! I use Vim on Ubuntu with _Terminator_ and with `zsh`.

Inspired by Vincent Jousse (thanks his book *vim pour les humains*) and by [Charles Gueunet](https://github.com/CharlesGueunet) but simplified.





## INSTALL

### Vim-conf

First, remove your old `.vim`, `init.vim` and `.vimrc`.
```
$ cd ~
$ git clone --recursive https://github.com/FtZzy/vim-conf.git .vim
$ ln -sf .vim/init.vim .vimrc
```
By default ctags use zsh if it is installed, else use bash.



### Vundle

I use [Vundle](https://github.com/VundleVim/Vundle.vim) (_Vim Bundle_) so you need it.

1. `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
1. Launch `vim` and run `:PluginInstall`

More informations on [https://github.com/VundleVim/Vundle.vim](https://github.com/VundleVim/Vundle.vim).




## KEYMAPS

I consider that you know how to use the default vim.



### Default shortcuts

You don't need plugin to use them...
The mouse is activated and my leader key is ','. You can change it in the file _.vimrc_.


#### Global

* `;;` ~ `<Esc>`
* `0` ~ `^`
* `<Ctrl>j` and `<Ctrl>k` ~ Drag line(s)
* `<leader><space>` ~ Disable research highlight
* `<leader>w` ~ Delete trailing spaces
* `<leader>-` ~ Fold between {}


#### Spell Checker

You can check the spell in vim.

* `<F6>` ~ French
* `<F7>` ~ English

For the both you get the options:

* `z=` ~ Display possible corrections
* `zg` ~ Add to dictionary
* `zug` ~ Cancel the addition
* `]s` ~ Next misspelled word
* `[s` ~ Previous misspelled word



### Navigation

#### Windows

* `<leader>v` ~ vertical split
* `<leader>h` ~ horizontal split
* `<leader>t` ~ new tab
* `<leader><` ~ previous tab
* `<leader>>` ~ next tab


#### Buffers

* `<leader>Down` ~ List all the buffers
* `<leader>Right` ~ Go to the next buffer
* `<leader>Left` ~ Go to previous buffer
* More possibilities [here](https://github.com/corntrace/bufexplorer).


#### Files

* `<leader>n` ~ hide/display the [NERDTree](https://github.com/scrooloose/nerdtree)
* `<leader>f` ~ display the NERDTree at current file



### Redaction

#### Bookmarks

* `mm` ~ Add/remove bookmark at the current line
* `mi` ~ Add/edit/remove annotation at current line
* `mn` ~ Next bookmark
* `mp` ~ Previous bookmark
* `mc` ~ Clear bookmarks
* And a lot of more, see them [here](https://github.com/MattesGroeger/vim-bookmarks).


#### Surrounding

* `cs"'` ~ Change `"toto"` to `'toto'`
* `cs'<q>` ~ Change `'toto'` to `<q>toto</q>`
* `ds"` ~ Delete the delimiters
* `yss)` ~ Put the entire line between parentheses
* And a lot of more, see them [here](https://github.com/tpope/vim-surround).


#### Markdown

* `gx` ~ Open link under the cursor
* `]]` ~ Go to next header
* `[[` ~ Go to previous header
* `][` ~ Go to next sibling header
* `[]` ~ Go to previous sibling header
* `]c` ~ Go to current header
* `]u` ~ Go to parent header
* `:HeaderDecrease` ~ Decrease level of all headers
* `:HeaderIncrease` ~ Increase level of all headers
* `:TableFormat` ~ Format the table under the cursor
* `:Toc` ~ Open table of contents
* And a lot of more, see them [here](https://github.com/plasticboy/vim-markdown).


#### Others

* `<leader>u` ~ Display [UndoTree](https://github.com/mbbill/undotree)
* `+/_` ~ Grow/reduce the [expand-region](https://github.com/terryma/vim-expand-region)
* `:Tabularize /=` ~ Align the symbols with [tabular](https://github.com/godlygeek/tabular)



### Programmation

#### NERDCommenter

* `<leader>cc` ~ comment in visual mode
* `<leader>c<space>` ~ comment/uncomment line(s)
* And a lot of more, see them [here](https://github.com/scrooloose/nerdcommenter).


#### Snippets

[Snippets](https://github.com/honza/vim-snippets) are vailable for: Elixir, Falcon, HTML Django, Javascript, Markdown, PHP, Python, Ruby, Scala and Supercollider. Need [it](https://github.com/SirVer/ultisnips) before.

* `<tab>` ~ Expand trigger
* `<Ctrl>b` ~ Jump forward trigger
* `<Ctrl>g` ~ Jump backward trigger


#### Git

[This](https://github.com/airblade/vim-gitgutter) plugin show the modifications (+, - or ~).
Moreover you can use [Vim-fugitive](https://github.com/tpope/vim-fugitive) like explain.

* `:Gread` ~ Revert current file
* `:Gwrite` ~ Add current file
* `:Gremove` ~ Delete current file
* `:Gmove` ~ Rename current file
* `:Gdiff` ~ Show difference between actual and last version for the current file
* And a lot of more, see them [here](http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/).


#### Python

I use [flake](https://github.com/andviro/flake8-vim) for check if the file is pep8 when we save it. I use also [jedi](https://github.com/davidhalter/jedi-vim).

* `<leader>g` ~ Go to assignments
* `<leader>d` ~ Go to definition
* `K` ~ Show documentation
* `<leader>r` ~ Rename
* `<leader>s` ~ Show usages


#### C/C++

To use [clang](https://github.com/justmao945/vim-clang) you need to install it: `sudo apt-get install clang`!




## CHARACTERISTICS

Of course I use more plugins than see previously.



### Redaction

The writing is easier with the [autocompletion](https://github.com/vim-scripts/AutoComplPop). You can also use the [tabulation](https://github.com/ervandew/supertab) to choose.

You can insert or delete brackets, parentheses, quotes and more containers in [pair](https://github.com/jiangmiao/auto-pairs).


### Display

The [homepage](https://github.com/mhinz/vim-startify) when you launch `vim` allow to see recent files.

I use the famous colorschemes [solarized](https://github.com/altercation/vim-colors-solarized) or [monokai](https://github.com/sickill/vim-monokai). My [airline](https://github.com/vim-airline/vim-airline)'s theme is set to _ravenpower_, among a big [choice](https://github.com/vim-airline/vim-airline-themes).

In normal mode we get a relative position, to simplify the commands, with [number](https://github.com/myusuf3/numbers.vim).

Finally I use [rainbow](https://github.com/luochen1990/rainbow) to see the pairs for parentheses and symbols.



### Programmation

I check [syntax](https://github.com/scrooloose/syntastic) for many languages.
In additional I add:

* for C++:
    * more [highlight](https://github.com/octol/vim-cpp-enhanced-highlight);
    * set `std=++11` for syntax;
* for Scala:
    * [syntastic color](https://github.com/derekwyatt/vim-scala);
* for JavaScript:
    * [JSHint](https://github.com/Shutnik/jshint2.vim).



## TODO

* Add languages





# LICENSE
Copyright (c) 2020 [Krupa Nathan](https://github.com/FtZzy)
