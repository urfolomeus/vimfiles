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

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" languages
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'

" tools
Plug 'tpope/vim-commentary'

call plug#end()


" Set colorscheme
colorscheme lunarized
set background=dark

