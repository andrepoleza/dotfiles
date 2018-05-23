execute pathogen#infect()

syntax on

let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"

set autoindent
set colorcolumn=80
set expandtab
set ignorecase
set nobackup
set noerrorbells
set nohlsearch
set noshowmode
set noswapfile
set novisualbell
set nowb
set number
set runtimepath^=~/.vim/bundle/ctrlp.vim
set shiftwidth=2
set softtabstop=2
set t_vb=
set tabstop=2
set timeout ttimeoutlen=50
set tm=500
set ttyfast

autocmd BufEnter * EnableStripWhitespaceOnSave
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

let c='a'
while c <= 'z'
  exec "set <A-".c.">=\e".c
  exec "imap \e".c." <A-".c.">"
  let c = nr2char(1+char2nr(c))
endw

let $FZF_DEFAULT_COMMAND = 'ag -g ""'
if executable('ag')
  let g:ackprg = 'ag %s -l --vimgrep --smart-case --nocolor'
endif

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap < <gv
vnoremap > >gv
noremap <silent> <C-S> :update<CR>
vnoremap <silent> <C-S> <C-C>:update<CR>
inoremap <silent> <C-S> <C-O>:update<CR>
nnoremap \ :Ag<SPACE>
nnoremap <tab>   <c-w>w
nnoremap <S-tab> <c-w>W
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:winresizer_start_key = '<C-T>'

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

colorscheme one
