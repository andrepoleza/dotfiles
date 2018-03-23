execute pathogen#infect()

syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set noswapfile
set number
set nohlsearch
set ttyfast
set ignorecase

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set runtimepath^=~/.vim/bundle/ctrlp.vim

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

nnoremap \ :Ag<SPACE>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

set colorcolumn=80

let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'absolutepath', 'modified' ] ],
      \ },
      \ }

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

call plug#begin('~/.vim/plugged')

Plug '/usr/local/opt/fzf'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'fatih/vim-go'
Plug 'fatih/vim-hclfmt'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'
Plug 'paulojean/sort-quire.vim'
Plug 'simeji/winresizer'
Plug 'tpope/vim-sensible'

call plug#end()

color dracula

autocmd BufEnter * EnableStripWhitespaceOnSave