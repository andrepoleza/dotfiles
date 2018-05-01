execute pathogen#infect()

syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

set number
set nobackup
set nowb
set noswapfile

set nohlsearch
set ttyfast
set ignorecase

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

set noerrorbells
set novisualbell
set t_vb=
set tm=500

set scrolloff=50

let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

set timeout ttimeoutlen=50

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

vnoremap < <gv
vnoremap > >gv

noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nnoremap \ :Ag<SPACE>

nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:winresizer_start_key = '<C-T>'

set colorcolumn=80

let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ },
      \ }

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'fatih/vim-go'
Plug 'fatih/vim-hclfmt'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/vim-easy-align'
Plug 'matze/vim-move'
Plug 'paulojean/sort-quire.vim'
Plug 'rakr/vim-one'
Plug 'rust-lang/rust.vim'
Plug 'sgur/vim-editorconfig'
Plug 'simeji/winresizer'
Plug 'tpope/vim-sensible'
Plug 'w0rp/ale'

call plug#end()

set background=dark
let g:one_allow_italics = 1
colorscheme one

autocmd BufEnter * EnableStripWhitespaceOnSave
