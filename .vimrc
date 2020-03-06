"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @file vimrc
" @author Nathan Krupa
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Import all the plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" General
"""""""""
" Navigation
Plug 'scrooloose/nerdtree'        " File tree
Plug 'corntrace/bufexplorer'      " Explore buffers

" Completion
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'

" Writing
Plug 'jiangmiao/auto-pairs'       " Autoclose parentheses
Plug 'MattesGroeger/vim-bookmarks' " Annotations
Plug 'terryma/vim-expand-region'  " Select 'region'
Plug 'tpope/vim-surround'         " Change surrounding
Plug 'godlygeek/tabular'          " Align symbols (before markdown)

" Others
Plug 'mbbill/undotree'            " Undo tree
Plug 'myusuf3/numbers.vim'        " Relative position in normal mode
Plug 'matze/vim-move'             " Drag lines


" Display
"""""""""
" Color themes
Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'        " Colorschemes
Plug 'vim-airline/vim-airline'    " Bottom bar
Plug 'vim-airline/vim-airline-themes' " ... and the themes

" Others
Plug 'mhinz/vim-startify'         " Homepage
Plug 'luochen1990/rainbow'        " Symbols coloration


" Programmation
"""""""""""""""
" Snippets
Plug 'SirVer/ultisnips'			" Snippets...
Plug 'honza/vim-snippets'         " ... are together

" Git
Plug 'tpope/vim-fugitive'         " Use git from vim
Plug 'airblade/vim-gitgutter'     " Show git modifications

" Python
Plug 'davidhalter/jedi-vim'       " Python autocompletion
Plug 'andviro/flake8-vim'         " Pep8

" C/C++
Plug 'justmao945/vim-clang'       " Parse and complete
Plug 'octol/vim-cpp-enhanced-highlight' " Add highlights
Plug 'majutsushi/tagbar'          " Browse the tags

" Scala
Plug 'derekwyatt/vim-scala'       " All you need for Scala

" JavaScript
Plug 'Shutnik/jshint2.vim'        " JSHint

" Markdown
Plug 'plasticboy/vim-markdown'    " All you need for markdown

" LaTeX
Plug 'vim-latex/vim-latex'

" Others
Plug 'scrooloose/syntastic'       " Check syntastic
Plug 'scrooloose/nerdcommenter'   " Easy comments

call plug#end()
filetype plugin indent on
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim comportment
"""""""""""""""""
set nocompatible				" Requisite
set hidden						" Hide buffer
set novisualbell
set noerrorbells
set autoread					" Search if the file change
set ssop=buffers,curdir,options,tabpages,winsize  " If change vimrc
set encoding=utf-8              " Define utf-8
set mouse=a                     " Enable mouse
set clipboard+=unnamedplus      " Global clipboard


" Global configuration
""""""""""""""""""""""
let mapleader=","				" The leader key is ','

" Redaction
set backspace=indent,eol,start	" 'Normal' back
set wrap 						" Return if line too long
set showmatch 					" Show link between parentheses

" Indentation
set expandtab			" Transform tabulation to space
set tabstop=4			" 1 tab = 4 spaces
set shiftwidth=4		" 4 spaces for autoindentation
set autoindent			" Active autoindentation
set copyindent			" Copy indentation with autoindent
set shiftround			" Use n shiftwidth with < and >
set smarttab			" Smart deletion with tabs

" Basic display
set title		" Update title
set number 		" Display line number
set ruler		" Display cusor position
set cursorline  " Highlight cursor line
set scrolloff=6		" Display at list 6 lines around cursor

" Research
set ignorecase		" Ignore case
set smartcase		" ... except if contains uppercase
set hlsearch		" Highlight the results
set incsearch		" ... same while tapping

" Ban files from completion
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn
set wildignore+=*.aux,*.out,*.toc 	" Latex
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg " Pictures
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " Compilation
set wildignore+=*.sw? 			" Vim
set wildignore+=*.pyc 			" Python
set wildignore+=*.class			" Java/Scala


" Coloration and display
""""""""""""""""""""""""
" Colorscheme
set background=dark	        " Dark version
colorscheme solarized       " Theme choice
"colorscheme monokai

" Vim-airline
let g:airline_theme='ravenpower'    " Bar themedense-analysis/ale
set laststatus=2            " Always display vim-airline

" Display spaces to end of line
highlight NoSpacesEOL ctermbg=blue ctermfg=white
match NoSpacesEOL / \+$/

" Enable rainbow parentheses
let g:rainbow_active=1


" Programmation
"""""""""""""""
" Completion
autocmd CompleteDone * silent! pclose!  " Ferme automatiquement fenetre d'aide
let g:deoplete#enable_at_startup = 1    " Enable deoplete
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" Python
let g:PyFlakeOnWrite = 0
let g:ale_linters = {
\   'python': ['flake8'],
\}
let g:ale_linters_explicit = 1
let g:python_host_prog = '/home/nathan/Software/neovim/py2/bin/python'
let g:python3_host_prog = '/home/nathan/Software/neovim/py3/bin/python'

autocmd FileType python :setlocal colorcolumn=80 " Display column 80

" C/C++
let g:syntastic_cpp_compiler_options = ' -std=c++11'
let g:cpp_class_decl_highlight = 1  " octol/vim-cpp-enhanced-highlight
map <F8> :TagbarToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim commands
""""""""""""""
" Global key maps
imap ;; <Esc>
map ;; <Esc>
map 0 ^

" Hardcore mode
nnoremap <Left> :echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>

" Stop highlight
nnoremap <leader><space> :nohlsearch<cr>

" Delete blank spaces
nnoremap <silent> <Leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
"
" Reduce between {}
map <leader>- [{zf%<CR>

" Spell checker
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
map <silent> <F7> "<Esc>:silent setlocal spell! spelllang=en<CR>"


" Plugin commands
"""""""""""""""""
" Window navigation
map <leader>v :vsplit<CR>
map <leader>h :split<CR>
map <Leader>> :tabnext<CR>
map <Leader>< :tabprevious<CR>
map <Leader>t :tabnew<CR>

" Buffer navigation
map <leader><Down> :ls<CR>
map <leader><Right> :bn<CR>
map <leader><Left> :bp<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
map <leader>f :NERDTreeFind<CR>

" UndoTree
map <leader>u :UndotreeToggle<CR>

" Vim snippets (Python, HTML, Js, Markdown, Scala, ...)
let g:UltiSnipsExpandTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-g>"

" Python
let g:jedi#usages_command="<leader>s"
let g:jedi#completions_enabled = 0
let g:jedi#show_call_signatures = "2"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scripts et Functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight word under cursor
"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Go back to the same line when reopening
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute 'normal! g`"zvzz' |
                \ endif
augroup END

" Prefer zsh
if filereadable("/bin/zsh")
    let g:syntastic_shell = '/bin/zsh'
else
    let g:syntastic_shell = '/bin/bash'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use .vimrc.local if present
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.vimrc.local"))
    source \~/.vimrc.local
endif
