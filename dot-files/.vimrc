"""""""""""""""""""""""
" VUNDLE PLUGINS

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " let Vundle manage plugins (required)
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'scrooloose/nerdcommenter'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'rking/ag.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'burnettk/vim-angular'
Plugin 'tpope/vim-markdown'
Plugin 'greplace.vim'
Plugin 'kylef/apiblueprint.vim'
Plugin 'cakebaker/scss-syntax.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""
" CONFIGURATION

let mapleader = ','


"""""""""""""""""""""""
" SEARCHING

" Use The Silver Searcher instead of grep
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

map \ :Ag<Space>


"""""""""""""""""""""""
" SHORTCUTS

" Comma-n to toggle the Tagbar
nmap <Leader>n :TagbarToggle<CR>

" Comma-m to toggle NERD tree
map <Leader>m :NERDTreeToggle<CR>

" Split pane shortcuts
map <Leader>h :vsplit<CR>
map <Leader>j :split<CR>

" Replace word currently under cursor
nmap <Leader>s :%s/\<<C-r><C-w>\>//g<Left><Left>

" vim-go shortcuts
nmap <Leader>g :GoDef<CR>
nmap <Leader>i :GoInfo<CR>

"""""""""""""""""""""""
" SEARCHING

set ignorecase " Ignore case
set smartcase  " Be case sensitive if uppercase
set incsearch  " Incremental searching is sexy
set hlsearch   " Highlight search results


"""""""""""""""""""""""
" APPEARANCE

" Use 2 spaces instead of tabs
set tabstop=2
set shiftwidth=2 
set expandtab 
set smarttab

" Autoindent
set autoindent

" Use solarized color schema
syntax enable
set background=dark
colorscheme codedark

" Show information about the current command being run
set showcmd

" Show line numbers
set number

" Show matching brackets.
set showmatch

" Show line number on status bar
set ruler

let &colorcolumn=80                                                             
hi ColorColumn ctermbg=0

"""""""""""""""""""""""
" PLUGIN CONFIGURATION

" vim-jsfmt
let g:js_fmt_autosave = 1

" vim-angular
let g:syntastic_html_tidy_ignore_errors = [
  \'ark-', 
  \'lacks "action',
  \' proprietary attribute ',
  \' is not recognized!',
  \'discarding unexpected',
  \]

" vim-go
let g:go_fmt_command = "goimports"
