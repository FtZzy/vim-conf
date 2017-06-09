"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @file vimrc
" @author Nathan Krupa
" @version 0.2
" @date 28-05-2017
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Importation des plugins (Vundle)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique à Vundle de s'auto-gérer
Plugin 'gmarik/Vundle.vim'			" Nécessaire

" Autres plugins que Vundle doit gérer
Plugin 'scrooloose/nerdtree'        " Arborescence fichier
Plugin 'vim-scripts/AutoComplPop'   " Fenêtre d'auto complétion
Plugin 'jiangmiao/auto-pairs'       " Gestion des parenthèses
Plugin 'tpope/vim-fugitive'         " Utilisation de git depuis vim
Plugin 'airblade/vim-gitgutter'     " Montre modifications git
Plugin 'scrooloose/syntastic'       " Vérifie la syntaxe
Plugin 'scrooloose/nerdcommenter'   " Commenter facilement

" Coloration et affichage
Plugin 'sickill/vim-monokai'        " Thème couleur
Plugin 'vim-airline/vim-airline'    " Bar du bas...
Plugin 'vim-airline/vim-airline-themes' " ... et ses thèmes

" Snippets
Plugin 'SirVer/ultisnips'			" Snippets...
Plugin 'honza/vim-snippets'         " ... vont ensemble

" Python
Plugin 'andviro/flake8-vim'         " Pep8

" JavaScript
Plugin 'Shutnik/jshint2.vim'        " JSHint

call vundle#end()
filetype plugin indent on
syntax on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fin Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" Comportement Vim
""""""""""""""""""
set nocompatible				" Nécessaire
set hidden						" Cache buffer
set novisualbell
set noerrorbells
set autoread					" Recherche le fichier si modifié ailleurs
set ssop=buffers,curdir,options,tabpages,winsize  " Changement vimrc
set encoding=utf-8              " Définition du terminal en utf-8
set mouse=a                     " Souris activée


" Configuration globale
"""""""""""""""""""""""
let mapleader=","				" Leader key est ','

" Rédaction
set backspace=indent,eol,start	" Retour en arrière 'normal'
set wrap 						" Retour à la ligne si trop longue
set showmatch 					" Montre le lien des parenthèses

" Indentation
set expandtab			" Transforme les tabulation en espaces
set tabstop=4			" 1 tab représente 4 espaces
set shiftwidth=4		" 4 espaces pour l'auto indentation
set autoindent			" Active l'auto indentation
set copyindent			" Copie l'indentation en auto indent
set shiftround			" Utilise n shiftwidth avec <>
set smarttab			" Suppression intelligente avec tabs

" Affichage élémentaire
set title		" Met a jour le titre de la fenêtre/terminal
set number 		" Affiche numéro lignes
set ruler		" Affiche position du curseur
set cursorline  " Surligne la ligne du curseur
set scrolloff=6		" Affiche au moins 6 lignes autour du
					" curseur (pour le scroll)

" Recherche
set ignorecase		" Ignore casse lors d'une recherche...
set smartcase		" ... sauf si elle contient une majuscule
set incsearch		" Surligne les résultats de recherche pendant
                    " la saisie
set hlsearch		" Surligne les résultats de recherche

" Exclut certains fichiers de la complétion
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn
set wildignore+=*.aux,*.out,*.toc 	" Fichiers latex
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg " Images
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " Compilateur
set wildignore+=*.sw? 			" Vim
set wildignore+=*.pyc 			" Python 
set wildignore+=*.class			" java/scala


" Coloration et affichage
"""""""""""""""""""""""""
" Thème couleur
set background=dark	        " Version sombre
set t_Co=256
colorscheme monokai         " Choix du thême

" Vim-airline
set laststatus=2            " Toujours afficher vim-airline
let g:airline_theme='ravenpower'


" Montre les espaces en fin de ligne
highlight NoSpacesEOL ctermbg=blue ctermfg=white
match NoSpacesEOL / \+$/
" Surligne dépasse pas 80 caractères
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.*/


" Programmation
"""""""""""""""
" Python
let g:PyFlakeOnWrite=1      " Vérification à la sauvegarde


" Raccourcis
""""""""""""
" Maps
imap ;; <Esc>
map ;; <Esc>
map ; :
map 0 ^

" Gestion fenêtres
map <leader>v :vsplit<CR>
map <leader>h :split<CR>
map <Leader>> :tabnext<CR>
map <Leader>< :tabprevious<CR>
map <Leader>t :tabnew<CR>

" Décaler lignes avec Alt+j/k
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" NERDTree
map <leader>n :NERDTreeToggle<cr>
map <leader>f :NERDTreeFind<cr>

" Vim snippets (Python, HTML, Js, Markdown, Scala, ...)
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-g>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Scripts et Fonctions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Surligne le mot en dessous du curseur
"autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" Retourne à la même ligne à la réouverture
augroup line_return
    au!
    au BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ execute 'normal! g`"zvzz' |
                \ endif
augroup END

" Correcteur d'orthographe
map <silent> <F6> "<Esc>:silent setlocal spell! spelllang=fr<CR>"
map <silent> <F7> "<Esc>:silent setlocal spell! spelllang=en<CR>"

" Préférence pour zsh
if filereadable("/bin/zsh")
    let g:syntastic_shell = '/bin/zsh'
else
    let g:syntastic_shell = '/bin/bash'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Utilise .vimrc.local si présent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand("\~/.vimrc.local"))
    source \~/.vimrc.local
endif
