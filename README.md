# README for vim-conf

It is my personal Vim/Neovim configuration! I use Neovim on Ubuntu (Linux) with _Terminator_ and `zsh`.



## INSTALL

### Vim-conf

First, remove your old folders `.vim/` and `nvim/` and files `init.vim` and `.vimrc`.
```
$ git clone --recursive https://github.com/FtZzy/vim-conf.git ~/.config/nvim
$ ln -rs ~/.config/nvim ~/.vim
$ ln -rs ~/.config/nvim/init.vim ~/.vimrc
```
By default ctags use zsh if it is installed, else use bash.


### Vundle

I use [vim-plug](https://github.com/junegunn/vim-plug) so you need it.

1. For nvim: `curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
1. For vim: `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
1. Launch `nvim` or `vim` and run `:PlugInstall`


### Virtual environment for python

```
$ mkdir -p ~/Software/neovim/py2
$ mkdir -p ~/Software/neovim/py3
$ cd ~/Software/neovim
$ virtualenv -p /usr/bin/python2.7 py2
$ python3 -m venv py3
$ /home/nathan/Software/neovim/py2/bin/pip install pynvim
$ /home/nathan/Software/neovim/py3/bin/pip install pynvim
```



## KEYMAPS

I consider that you know how to use the default vim.


### Default shortcuts

You don't need plugin to use them...
The mouse is activated and my leader key is ','. You can change it in the file _init.vim_.

* `;;` ~ `<Esc>`
* `0` ~ `^`
* `<Ctrl>j` and `<Ctrl>k` ~ Drag line(s)
* `<leader><space>` ~ Disable research highlight
* `<leader>w` ~ Delete trailing spaces
* `<leader>-` ~ Fold between {}

You can check the spell in vim.

* `<F6>` ~ French
* `<F7>` ~ English
* `z=` ~ Display possible corrections
* `zg` ~ Add to dictionary
* `zug` ~ Cancel the addition
* `]s` ~ Next misspelled word
* `[s` ~ Previous misspelled word

Navigation into tabs or buffer:

* `<leader>t` ~ Create new tab
* `<leader><` ~ Go to the previous tab
* `<leader>>` ~ Go to the next tab
* `<leader><Right>` ~ Go to the next buffer
* `<leader><Left>` ~ Go to previous buffer


### Plugins shortcuts

#### NERDTree

* `<leader>n` ~ Display or hide the file system explorer
* `<leader>nf` ~ Display the file system explorer at current file
* And a lot of more, see them [here](https://github.com/scrooloose/nerdtree)

#### NERDCommenter

* `<leader>cc` ~ comment in visual mode
* `<leader>c<space>` ~ comment/uncomment line(s)
* And a lot of more, see them [here](https://github.com/scrooloose/nerdcommenter).

#### Vim-surround 

* `cs"'` ~ Change `"toto"` to `'toto'`
* `cs'<q>` ~ Change `'toto'` to `<q>toto</q>`
* `ds"` ~ Delete the delimiters
* `yss)` ~ Put the entire line between parentheses
* And a lot of more, see them [here](https://github.com/tpope/vim-surround).

#### Coc.nvim

I will just present the shortcuts, learn more about [coc.nvim](https://github.com/neoclide/coc.nvim) on their page.

* `<tab>` ~ Use for completion (check if it not ever used before with `:verbose imap <tab>`)
* `<c-space>` ~ Trigger completion
* `[g` ~ See the next diagnostic
* `g]` ~ See the previous diagnostic
* `gd` ~ Go to definition
* `gy` ~ Go to type definition
* `gi` ~ Go to implementation
* `gr` ~ Go to references
* `K` ~ Show documentation
* `<leader>rn` ~ Rename symbol
* `<leader>f` ~ Format selected code
* `<leader>a` ~ Apply action to the selected region (ex: `<leader>aap`)
* `<leader>ac` ~ Apply action to the current buffer
* `<leader>qf` ~ AutoFix problem on the current line
* `<C-f>` and `<C-b>` ~ Scroll float windows
* `<C-s>` ~ Select ranges
* `<space>a` ~ List all diagnostics
* `<space>e` ~ Manage extensions
* `<space>c` ~ Show commands
* `<space>o` ~ Find symbol of current document
* `<space>s` ~ Search workspace symbols
* `<space>j` ~ Do default action for next item
* `<space>k` ~ Do default action for previous item
* `<space>p` ~ Resume latest coc list
* `:Format` ~ Format current buffer
* `:Fold` ~ Fold current buffer
* `:OR` ~ Organize imports of the current buffer

#### Others

* `<leader>u` ~ Display the [UndoTree](https://github.com/mbbill/undotree)
* `+/-` ~ Grow/reduce the [vim-expand-region](https://github.com/terryma/vim-expand-region)
* `:Tabularize /=` ~ Align the symbols with [tabular](https://github.com/godlygeek/tabular)


### My others plugins

The [homepage](https://github.com/mhinz/vim-startify) when you launch `vim` allow to see recent files.

I use the famous colorschemes [solarized](https://github.com/altercation/vim-colors-solarized) or [monokai](https://github.com/sickill/vim-monokai). My [airline](https://github.com/vim-airline/vim-airline)'s theme is set to _ravenpower_, among a big [choice](https://github.com/vim-airline/vim-airline-themes).

In normal mode we get a relative position, to simplify the commands, with [number](https://github.com/myusuf3/numbers.vim).

Finally I use [rainbow](https://github.com/luochen1990/rainbow) to see the pairs for parentheses and symbols. And they autoclose thanks [lexima](https://github.com/cohama/lexima.vim). Moreover I use too [closetag](https://github.com/alvan/vim-closetag) for the tags.

For the programmation, I check syntax with [ale](https://github.com/dense-analysis/ale') but it is disable by default: use `:ALEToggle`.

Using git, I have [vim-gitgutter](https://github.com/airblade/vim-gitgutter) show the modifications (+, - or ~).
Moreover, I use [vim-fugitive](https://github.com/tpope/vim-fugitive) to manage git with vim:

* `:Gread` ~ Revert current file
* `:Gwrite` ~ Add current file
* `:Gremove` ~ Delete current file
* `:Gmove` ~ Rename current file
* `:Gdiff` ~ Show difference between actual and last version for the current file
* And a lot of more, see them [here](http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/).

Finally, I use [black](https://github.com/psf/black) for python. It's simple tu use, you just need to use `:Black`.




# LICENSE
Copyright (c) 2021 [Krupa Nathan](https://github.com/FtZzy)
