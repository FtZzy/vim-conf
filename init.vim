""""""""""""""""""""""""""
" Import all the plugins "
""""""""""""""""""""""""""
call plug#begin('~/.config/nvim/plugged')

" Navigation
Plug 'preservim/nerdtree'	    " File tree
Plug 'mbbill/undotree'          " Undo tree

" Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Completion
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

" Coc plugin
""""""""""""
set nobackup                    " Issues for servers...
set nowritebackup               " ... with backup files
set cmdheight=2                 " Give more space for messages
set shortmess+=c                " Don't pass messages to ins-completion-menu

" Always show the signcolumn, otherwise it would shift the text each time
if has("patch-8.1.1564") " Fix here
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for completion (check before ':verbose imap <tab>')
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <C-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region (ex: '<leader>aap' for current paragraph)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for applying codeAction to current buffer
nmap <leader>ac  <Plug>(coc-codeaction)

" AutoFix problem on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects (requires 'textDocument.documentSymbol' support)
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" Use CTRL-S for selections ranges.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


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
