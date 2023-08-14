""""""""""""""""""""""""""
" Import all the plugins "
""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" Navigation
Plug 'preservim/nerdtree'	    " File tree
Plug 'mbbill/undotree'          " Undo tree

" Completion
Plug 'alvan/vim-closetag'       " Autoclose tags

" Writing
Plug 'myusuf3/numbers.vim'		" Relative position
Plug 'matze/vim-move'			" Drag lines
Plug 'terryma/vim-expand-region' " Select region
Plug 'tpope/vim-surround'       " Change surrounding
Plug 'cohama/lexima.vim'        " Manage parentheses
Plug 'godlygeek/tabular'        " Align assignments

" Display and color
Plug 'sickill/vim-monokai'		" Colorschemes
Plug 'altercation/vim-colors-solarized' " Solarize theme
Plug 'vim-airline/vim-airline'	" Bottom bar...
Plug 'vim-airline/vim-airline-themes' " ... and the themes
Plug 'mhinz/vim-startify'       " Homepage
Plug 'luochen1990/rainbow'      " Symbols coloration

" Programmation
Plug 'dense-analysis/ale'       " Check syntax
Plug 'tpope/vim-fugitive'       " Git from vim
Plug 'airblade/vim-gitgutter'   " Show git modifications
Plug 'Xuyuanp/nerdtree-git-plugin' " Git plugin for nerdtree
Plug 'scrooloose/nerdcommenter' " Easy comments
Plug 'psf/black', { 'branch': 'stable' } " Use black for python

call plug#end()
filetype plugin indent on
syntax on


"""""""""""""""""
" Configuration "
"""""""""""""""""
" Vim comportment
set hidden                      " Hide buffer
set mouse=a
set clipboard=unnamedplus       " Global clipboard
set autoread                    " Check file change
set novisualbell
set noerrorbells
set ssop=buffers,curdir,options,tabpages,winsize
set backspace=indent,eol,start
set wrap                        " Return if line too long
set showmatch                   " Show link btw parentheses

" Indentation
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Display and coloration
set background=dark
colorscheme solarized " or monokai
let g:airline_theme='ravenpower'
set laststatus=2                " Always display vim-airline
set title                       " Update title
set cursorline
set scrolloff=5                 " Display 5 lines around cursor

" Research
set ignorecase                  " Ignore case...
set smartcase                   " ... except if contain uppercase
set hlsearch		            " Highlight the results
set incsearch		            " ... same while tapping

" Programmation
let g:python_host_prog = expand('~/Software/neovim/py2/bin/python')
let g:python3_host_prog = expand('~/Software/neovim/py3/bin/python')
autocmd FileType python :setlocal colorcolumn=80 " Show column 80


"""""""""""""
" Shortcuts "
"""""""""""""
let mapleader=","
imap ;; <Esc>
map ;; <Esc>
map 0 ^
map <Leader>t :tabnew<CR>
map <Leader>> :tabnext<CR>
map <Leader>< :tabprevious<CR>
map <leader><Right> :bn<CR>
map <leader><Left> :bp<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>nf :NERDTreeFind<CR>
map <leader>u :UndotreeToggle<CR>
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
map <silent> <F7> "<Esc>:silent setlocal spell! spelllang=en<CR>"
" Stop highlight
nnoremap <leader><space> :nohlsearch<cr>
" Delete blank spaces
nnoremap <silent> <Leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" Keep selection
vnoremap < <gv
vnoremap > >gv
" Reduce between {}
map <leader>- [{zf%<CR>


"""""""""""""""
" Set plugins "
"""""""""""""""
map - <Plug>(expand_region_shrink)
let g:rainbow_active=1
let g:ale_enabled=0


"""""""""""""""""""""""
" Scripts / Functions "
"""""""""""""""""""""""
" Display spaces to end of line
highlight NoSpacesEOL ctermbg=blue ctermfg=white
match NoSpacesEOL / \+$/

" Go back to the same line when reopening
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute 'normal! g`"zvzz' |
                \ endif
augroup END

" Highlight word under cursor
"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
