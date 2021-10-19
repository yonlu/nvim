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
  call dein#add('yonlu/omni.vim', {'branch': 'dev' })
  call dein#add('gruvbox-community/gruvbox')

  " Text editing
  call dein#add('neoclide/coc.nvim', { 'merged': 0 })
  call dein#add('psliwka/vim-smoothie')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
					\ 'build': 'sh -c "cd app && yarn install"' })
  call dein#add('rhysd/vim-clang-format')

  " Highlighting
  call dein#add('nvim-treesitter/nvim-treesitter', {'hook_post_update': 'TSUpdate'})
  call dein#add('nvim-treesitter/playground')
  call dein#add('machakann/vim-highlightedyank')
  call dein#add('norcalli/nvim-colorizer.lua')
  call dein#add('junegunn/rainbow_parentheses.vim')
  call dein#add('elixir-editors/vim-elixir')
  call dein#add('pangloss/vim-javascript')
  call dein#add('MaxMEllon/vim-jsx-pretty')
  call dein#add('styled-components/vim-styled-components')
  call dein#add('jackguo380/vim-lsp-cxx-highlight')
  call dein#add('tomlion/vim-solidity')

  " Fuzzy finding
  call dein#add('nvim-lua/plenary.nvim')
  call dein#add('nvim-telescope/telescope.nvim')

  " Interface
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('kyazdani42/nvim-web-devicons')
  call dein#add('liuchengxu/vim-which-key')
  call dein#add('romgrk/barbar.nvim')
  call dein#add('vim-airline/vim-airline')
  call dein#add('mhinz/vim-startify')
  call dein#add('tpope/vim-fugitive')
  call dein#add('voldikss/vim-floaterm')
  call dein#add('kyazdani42/nvim-tree.lua')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

let g:dein#enable_notification = 1
