" Set options
set number

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

