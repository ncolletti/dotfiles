" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'

" Plugin 'itchyny/lightline.vim'


" TODO: Load plugins here (pathogen or vundle)
" call pathogen#infect()
" syntax on
" filetype plugin indent on
" call pathogen#helptags()

" Plugins here for Neovim
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Plug 'sheerun/vim-polyglot'
" Plug 'preservim/nerdcommenter'
Plug 'pangloss/vim-javascript', {'for': 'javascript'}
"Plug 'styled-components/vim-styled-components', {'branch': 'main'}
Plug 'ryanoasis/vim-devicons'
" Plug 'dense-analysis/ale'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Iniitalize plugin system
call plug#end()

" colorscheme badwolf
colorscheme onedark

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" TODO: Pick a leader key
" let mapleader = ","

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Display
set showcmd
set cursorline
set lazyredraw
set showmatch
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
set laststatus=2

" Search
set incsearch
set hlsearch


" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=2
set softtabstop=4
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj

" Lightline color scheme
" let g:lightline = {
"    \  'colorscheme': 'one',
"   \}


let g:NERDTreeIgnore = ['^node_modules$']

" coc.nvim config

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" coc config
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-eslint',
      \ 'coc-json',
      \ 'coc-prettier',
      \ 'coc-tsserver',
      \ 'coc-emoji',
      \ 'coc-tslint',
      \ 'coc-tslint-plugin',
      \ 'coc-css',
      \ 'coc-vetur',
      \ 'coc-pairs',
      \]
" need ot install coc-pairs, coc-tsserver, coc-prettier

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" coc.nvim config end

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
