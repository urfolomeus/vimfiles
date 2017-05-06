" Set options
set number

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" languages
Plug 'elixir-lang/vim-elixir'

" tools
Plug 'tpope/vim-commentary'

call plug#end()

" Set colorscheme
colorscheme lunarized

