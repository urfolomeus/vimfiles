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

" Shortcuts for running tests
nmap <silent> <leader>T :TestNearest<CR>
nmap <silent> <leader>t :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>v :TestVisit<CR>

" Shortcut to toggle NERDTree
nmap <leader>b :NERDTreeToggle<CR>

" Keymaps for vim markdown preview
let vim_markdown_preview_toggle=2
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'

" Word wrap and spell check in Markdown documents
" au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.md setlocal spell
set complete+=kspell

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Set default search tool
let $FZF_DEFAULT_COMMAND= 'ag --hidden --ignore node_modules --ignore .git -g ""'

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


" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" colors
Plug 'https://github.com/aclissold/lunarized-syntax'

" languages
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-rails'


" tools
Plug 'benmills/vimux'
Plug 'itchyny/lightline.vim'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'janko-m/vim-test'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'

call plug#end()


" Set colorscheme
colorscheme lunarized
set background=dark
