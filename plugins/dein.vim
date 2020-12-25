" Dein Plugin Manager
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Colorscheme plugin
  call dein#add('drewtempelmeyer/palenight.vim')

  " Text editing plugins
  call dein#add('machakann/vim-highlightedyank')
  call dein#add('psliwka/vim-smoothie')

  " Interface
  call dein#add('liuchengxu/vim-which-key')
  call dein#add('Shougo/defx.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  call dein#add('itchyny/lightline.vim')
  call dein#add('bagrat/vim-buffet')
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('liuchengxu/vim-clap')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
