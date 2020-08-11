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

" Remap leader to SPACE
let mapleader="\<SPACE>"

" Shortcuts for fzf
nmap <leader>a :Files<CR>
nmap <leader>f :GFiles<CR>
nmap <leader>g :Rg<CR>
nmap <leader>b :Buffers<CR>

" Shortcuts for running tests
" nmap <silent> <leader>T :TestNearest<CR>
" nmap <silent> <leader>t :TestFile<CR>
" nmap <silent> <leader>a :TestSuite<CR>
" nmap <silent> <leader>v :TestVisit<CR>

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

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" vim test options
let test#strategy = 'vimux'
let g:VimuxHeight = '30'
let g:VimuxOrientation = 'h'

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
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'slashmili/alchemist.vim'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'


" tools
Plug 'airblade/vim-gitgutter'
Plug 'benmills/vimux'
Plug 'dag/vim-fish'
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'mattn/emmet-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ntpeters/vim-better-whitespace'
Plug 'reedes/vim-pencil'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

call plug#end()

source /home/alangardner/src/vimfiles/plugins/nvim-coc.vim

" Set colorscheme
colorscheme lunarized
set background=dark
