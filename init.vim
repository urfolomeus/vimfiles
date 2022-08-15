" Set options
set number
set nowrap
set list
set expandtab
set tabstop=2
set shiftwidth=2
set foldmethod=syntax
set foldlevel=99
set splitbelow
set splitright
set clipboard=unnamedplus

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Turn on spell check in Markdown documents
au BufRead,BufNewFile *.md setlocal spell
set complete+=kspell

" Remap leader to SPACE
let mapleader="\<SPACE>"

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" languages
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'
Plug 'cespare/vim-toml'


" tools
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'benmills/vimux'

call plug#end()

" source plugin config files
source $HOME/src/dot/vimfiles/config/coc.vim
source $HOME/src/dot/vimfiles/config/fzf.vim
source $HOME/src/dot/vimfiles/config/lightline.vim
source $HOME/src/dot/vimfiles/config/nerdtree.vim
source $HOME/src/dot/vimfiles/config/pencil.vim
source $HOME/src/dot/vimfiles/config/python.vim

" Set colorscheme
colorscheme lunarized
set background=dark
