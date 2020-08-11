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

" Remap leader to SPACE
let mapleader="\<SPACE>"


" Shortcut to toggle NERDTree
nmap <leader>d :NERDTreeToggle<CR>

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init()
augroup END

" Word wrap and spell check in Markdown documents
" au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.md setlocal spell
set complete+=kspell


" Lightline options
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste'],
    \             [ 'gitgutter', 'readonly', 'wc', 'filename', 'modified' ] ],
    \   'right': [ [ 'lineinfo' ], ['percent'] ]
    \ },
    \ 'component_function': {
    \   'gitgutter': 'LightLineGitGutter',
    \   'wc': 'WordCount'
    \ },
    \ }

function! LightLineGitGutter()
  if exists('*GitGutterGetHunkSummary')
    let [ added, modified, removed ] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', added, modified, removed)
  endif
  return ''
endfunction

let g:word_count="<?>"
set updatetime=1000
augroup WordCounter
  au!  CursorHold,CursorHoldI * call UpdateWordCount()
augroup END
function WordCount()
  return g:word_count
endfunction

function UpdateWordCount()
  let lnum = 1
  let n = 0
  while lnum <= line('$')
    let n = n + len(split(getline(lnum)))
    let lnum = lnum + 1
  endwhile
  let g:word_count = n
endfunction

" coc plugin things
let g:python3_host_prog = '$HOME/.pyenv/versions/3.7.6/bin/python'

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
source /home/alangardner/src/vimfiles/config/coc.vim
source /home/alangardner/src/vimfiles/config/fzf.vim

" Set colorscheme
colorscheme lunarized
set background=dark
