"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" @file vimrc
" @author Nathan Krupa
" @version 0.2
" @date 28-05-2017
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins import
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" On indique à Vundle de s'auto-gérer
Plugin 'gmarik/Vundle.vim'			" Nécessaire

" Autres plugins que Vundle doit gérer
Plugin 'scrooloose/nerdtree'


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
set autoread					" Recharche le fichier si modifié ailleurs
set ssop=buffers,curdir,options,tabpages,winsize  " Changement vimrc


" Configuration globale
"""""""""""""""""""""""
let mapleader=","				" Leader key is ','

" Rédaction
set backspace=indent,eol,start	" Retour en arrière 'normal'
set nowrap 						" PAS de retour à la ligne si trop longue
set showmatch 					" Montre le lien des parenthèses
set matchpairs+=<:>				" Ajoute <> à la vérification

" Indentation
set tabstop=4					" 1 tab représente 4 espaces
set autoindent					" Active l'autoindentation


" Affichage
set title		" Met a jour le titre de la fenetre/terminal
set number 		" Affiche numéro lignes
set ruler		" Affiche poisition du curseur
set cursorline		" Change couleur de la ligne du curseur
" Surligne le mot en dessous du curseur
autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))
set scrolloff=4		" Affiche au moins 6 lignes autour du
			" curseur (pour le scroll)

" Recherche
set ignorecase		" Ignore casse lors d'une recherche...
set smartcase		" ... sauf si elle contient une majusule
set incsearch		" Surligne les resultats de recherche pendant
			" la saisie
set hlsearch		" Surligne les resultats de recherche

" Exclut certains fichiers de la completion
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn		" Version Controls
set wildignore+=*.aux,*.out,*.toc 	" Latex Indermediate files
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg " Binary Imgs
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest " Compiled Object files
set wildignore+=*.sw? 			" Vim swap files
set wildignore+=*.pyc 			" Python Object codes
set wildignore+=*.class			" java/scala class files


" Navigation
imap ;; <Esc>
map ;; <Esc>
map <leader>v :vsplit<CR>

" Souris activée
set mouse=a


" Coloration
""""""""""""
"colorscheme delek	" Thème utilisé
set background=dark	" Version sombre

" Raccourcis
""""""""""""
map <leader>n :NERDTreeToggle<cr>

