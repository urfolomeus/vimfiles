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

" Remap leader to SPACE
let mapleader="\<SPACE>"

" Shortcut for fzf
nmap <leader>f :FZF<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Set default search tool
let $FZF_DEFAULT_COMMAND= 'ag --hidden --ignore node_modules --ignore .git -g ""'

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" languages
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" tools
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'

call plug#end()


" Set colorscheme
colorscheme lunarized
set background=dark
