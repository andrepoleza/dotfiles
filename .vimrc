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

autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set runtimepath^=~/.vim/bundle/ctrlp.vim

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

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
Plug 'tpope/vim-sensible'

call plug#end()

color dracula

autocmd BufEnter * EnableStripWhitespaceOnSave
