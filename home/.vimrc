"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/isa/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/home/isa/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'rafi/awesome-vim-colorschemes'
NeoBundle 'neoclide/coc.nvim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------


set autoindent
set tabstop=4
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab

set termguicolors

syntax on
colorscheme space-vim-dark

set guicursor=n-v-c-sm:block-blinkon1,i-ci-ve:ver50-iCursor-blinkon1,r-cr-o:hor20

hi Normal guibg=NONE ctermbg=NONE
