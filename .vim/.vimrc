set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'morhetz/gruvbox'

set t_Co=256
set background=dark
syntax enable
colorscheme gruvbox

set number

set nowrap
set tabstop=4
set shiftwidth=4
set shiftround
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set showmatch

NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'honza/vim-snippets'
NeoBundle 'tobyS/vmustache'
NeoBundle 'tobyS/pdv'
NeoBundle 'kien/ctrlp.vim'

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

NeoBundle 'Shougo/vimproc', {
\ 'build' : {
\     'windows' : 'make -f make_mingw32.mak',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'unix' : 'make -f make_unix.mak',
\    },
\ }

NeoBundle 'Shougo/unite.vim'

let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

NeoBundleCheck

