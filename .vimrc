"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @file vimrc
" @author Nathan Krupa
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Import all the plugins (Vundle)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle : self-manage
Plugin 'gmarik/Vundle.vim'			" Requisite

" General
"""""""""
" Navigation
Plugin 'scrooloose/nerdtree'        " File tree
Plugin 'corntrace/bufexplorer'      " Explore buffers

" Completion
if has('nvim')
  Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plugin 'Shougo/deoplete.nvim'
  Plugin 'roxma/nvim-yarp'
  Plugin 'roxma/vim-hug-neovim-rpc'
endif
Plugin 'zchee/deoplete-jedi'

" Writing
Plugin 'jiangmiao/auto-pairs'       " Autoclose parentheses
Plugin 'MattesGroeger/vim-bookmarks' " Annotations
Plugin 'terryma/vim-expand-region'  " Select 'region'
Plugin 'tpope/vim-surround'         " Change surrounding
Plugin 'godlygeek/tabular'          " Align symbols (before markdown)

" Others
Plugin 'mbbill/undotree'            " Undo tree
Plugin 'myusuf3/numbers.vim'        " Relative position in normal mode
Plugin 'matze/vim-move'             " Drag lines


" Display
"""""""""
" Color themes
Plugin 'altercation/vim-colors-solarized'
Plugin 'sickill/vim-monokai'        " Colorschemes
Plugin 'vim-airline/vim-airline'    " Bottom bar
Plugin 'vim-airline/vim-airline-themes' " ... and the themes

" Others
Plugin 'mhinz/vim-startify'         " Homepage
Plugin 'luochen1990/rainbow'        " Symbols coloration


" Programmation
"""""""""""""""
" Snippets
Plugin 'SirVer/ultisnips'			" Snippets...
Plugin 'honza/vim-snippets'         " ... are together

" Git
Plugin 'tpope/vim-fugitive'         " Use git from vim
Plugin 'airblade/vim-gitgutter'     " Show git modifications

" Python
Plugin 'davidhalter/jedi-vim'       " Python autocompletion
Plugin 'andviro/flake8-vim'         " Pep8
" Plugin 'dense-analysis/ale'       " Fix it

" C/C++
Plugin 'justmao945/vim-clang'       " Parse and complete
Plugin 'octol/vim-cpp-enhanced-highlight' " Add highlights

" Scala
Plugin 'derekwyatt/vim-scala'       " All you need for Scala

" JavaScript
Plugin 'Shutnik/jshint2.vim'        " JSHint

" Markdown
Plugin 'plasticboy/vim-markdown'    " All you need for markdown

" LaTeX
Plugin 'vim-latex/vim-latex'

" Others
"Plugin 'scrooloose/syntastic'       " Check syntastic
Plugin 'scrooloose/nerdcommenter'   " Easy comments

call vundle#end()
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

" Use tab for completion
"let g:SuperTabDefaultCompletionType = "<c-n>"

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim commands
""""""""""""""
" Global key maps
imap ;; <Esc>
map ;; <Esc>
map 0 ^

" Stop highlight
nnoremap <leader><space> :nohlsearch<cr>

" Delete blank spaces
nnoremap <silent> <Leader>w :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
"
" Reduce between
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
