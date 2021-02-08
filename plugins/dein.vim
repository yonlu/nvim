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

  " Colorschemes
  call dein#add('yonlu/omni.vim')
  call dein#add('glepnir/zephyr-nvim')

  " Text editing
  call dein#add('machakann/vim-highlightedyank')
  call dein#add('psliwka/vim-smoothie')
  call dein#add('neoclide/coc.nvim', { 'merged': 0 })
  call dein#add('nvim-treesitter/nvim-treesitter')
  call dein#add('nvim-treesitter/playground')

  "Fuzzy finding
  call dein#add('nvim-lua/popup.nvim')
  call dein#add('nvim-lua/plenary.nvim')
  call dein#add('nvim-telescope/telescope.nvim')

  " Interface
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('Shougo/defx.nvim')
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('liuchengxu/vim-which-key')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('glepnir/spaceline.vim', {
  \ 'hook_add': "
  \ let g:spaceline_seperate_style = 'none'
  \ "})
  call dein#add('bagrat/vim-buffet', {
  \ 'hook_add': "
  \ let g:buffet_powerline_separators	= 1\n
  \ let g:buffet_show_index	= 1\n
  \ let g:buffet_always_show_tabline = 0\n
  \ "})
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('mhinz/vim-startify')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

let g:dein#enable_notification = 1
