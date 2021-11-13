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
source $HOME/.config/nvim/plugins/telescope.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/vim-which-key.vim

" Plugin configs
let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = 'both'

lua <<EOF
require('lsp-config')
require('barbar')
require('nvim-cmp')
require'lualine'.setup()
require'colorizer'.setup()
require'nvim-tree'.setup()
local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)

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
  require "nvim-treesitter.configs".setup {
    playground = {
      enable = true,
      disable = {},
      updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
      persist_queries = false -- Whether the query persists across vim sessions
    }
  },
}

EOF
