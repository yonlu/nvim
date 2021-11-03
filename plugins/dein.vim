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
  call dein#add('sainnhe/everforest')

  " Text editing
  call dein#add('neoclide/coc.nvim', { 'merged': 0 })
  call dein#add('neovim/nvim-lspconfig')
  call dein#add('hrsh7th/cmp-nvim-lsp')
  call dein#add('hrsh7th/cmp-buffer')
  call dein#add('hrsh7th/cmp-path')
  call dein#add('hrsh7th/cmp-cmdline')
  call dein#add('hrsh7th/nvim-cmp')

  " For vsnip users.
  call dein#add('hrsh7th/cmp-vsnip')
  call dein#add('hrsh7th/vim-vsnip')

  " cmp sources
  call dein#add('tzachar/cmp-tabnine', { 'build': './install.sh' })

  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
					\ 'build': 'sh -c "cd app && yarn install"' })
  call dein#add('rhysd/vim-clang-format')

  " Highlighting
  call dein#add('nvim-treesitter/nvim-treesitter', {'hook_post_update': 'TSUpdate'})
  call dein#add('nvim-treesitter/playground')
  call dein#add('machakann/vim-highlightedyank')
  call dein#add('norcalli/nvim-colorizer.lua')
  call dein#add('junegunn/rainbow_parentheses.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('MaxMEllon/vim-jsx-pretty')
  call dein#add('styled-components/vim-styled-components')
  call dein#add('jackguo380/vim-lsp-cxx-highlight')
  call dein#add('tomlion/vim-solidity')

  " Fuzzy finding
  call dein#add('nvim-lua/plenary.nvim')
  call dein#add('nvim-telescope/telescope.nvim')

  " User Interface
  call dein#add('nvim-lualine/lualine.nvim')
  call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('kyazdani42/nvim-web-devicons')
  call dein#add('liuchengxu/vim-which-key')
  call dein#add('romgrk/barbar.nvim')
  call dein#add('mhinz/vim-startify')
  call dein#add('voldikss/vim-floaterm')
  call dein#add('kyazdani42/nvim-tree.lua')
  call dein#add('nathanaelkane/vim-indent-guides')
  call dein#add('psliwka/vim-smoothie')

  " Utilities
  call dein#add('tpope/vim-fugitive')
  call dein#add('williamboman/nvim-lsp-installer')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on

let g:dein#enable_notification = 1
