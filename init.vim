" Initialize base requirements
if has('vim_starting')
	" Global Mappings "{{{
	" Use spacebar as leader and ; as secondary-leader
	" Required before loading plugins!
	let g:mapleader="\<Space>"
	let g:maplocalleader=';'
endif

" Basic settings
source $HOME/.config/nvim/plugins/dein.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/vim-which-key.vim

" Plugin configs
source $HOME/.config/nvim/plugins/defx.vim

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF
