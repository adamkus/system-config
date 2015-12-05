" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif
if has('vim_starting')
  if &compatible
    set nocompatible
  endif
  set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

set runtimepath+=~/.vim/bundle/neobundle.vim/

call neobundle#begin(expand('~/.vim/bundle/'))

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

call neobundle#end()

let g:pdv_template_dir = $HOME ."/.vim/bundle/pdv/templates_snip"
nnoremap <buffer> <C-p> :call pdv#DocumentWithSnip()<CR>

let g:ctrlp_map = '<c-f>'
let g:ctrlp_cmd = 'CtrlP'

NeoBundleCheck
