set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on
set softtabstop=2 shiftwidth=2 expandtab
colorscheme monokai
set number
set hlsearch
set relativenumber
set path+=**
set wildmenu
let g:netrw_banner=0
let g:netrw_liststyle=3
set directory=$HOME/.vim/swapfiles//
set showcmd
set lazyredraw
set showmatch
set incsearch

" Folding
set foldenable 
set foldlevelstart=10
set foldnestmax=10
nnoremap <space> za

" Remap beginning and end keys
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap ^ <nop>

" " $/^ doesn't do anything
nnoremap gV `[v`]
nmap <C-s> :w!<cr>
let g:airline_theme='monokai'
set laststatus=2
let g:airline#extensions#branch#enabled=1

" Searching ( CtrlP Acks )
set runtimepath^=~/.vim/bundle/ctrlp.vim
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/vendor/*,*/\.git/*
let g:ctrlp_custom_ignore = 'tmp$\|\.git$\|\.hg$\|\.svn$\|.rvm$|.bundle$\|vendor\|\node_modules\|\.yardoc\|public$\|\log'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=25
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

" Misc
set cursorline 
