  -- barbar.nvim
  local map = vim.api.nvim_set_keymap
  local opts = { noremap = true, silent = true }

  -- Magic buffer-picking mode
  map('n', '<C-s>', ':BufferPick<CR>', opts)

  -- Goto buffer in position...
  map('n', '<leader>1', ':BufferGoto 1<CR>', opts)
  map('n', '<leader>2', ':BufferGoto 2<CR>', opts)
  map('n', '<leader>3', ':BufferGoto 3<CR>', opts)
  map('n', '<leader>4', ':BufferGoto 4<CR>', opts)
  map('n', '<leader>5', ':BufferGoto 5<CR>', opts)
  map('n', '<leader>6', ':BufferGoto 6<CR>', opts)
  map('n', '<leader>7', ':BufferGoto 7<CR>', opts)
  map('n', '<leader>8', ':BufferGoto 8<CR>', opts)
  map('n', '<leader>9', ':BufferGoto 9<CR>', opts)

  -- Close buffer
  map('n', '<leader><Tab>', ':BufferClose<CR>', opts)
  map('n', '<leader><S-Tab>', ':BufferCloseAllButCurrent<CR>', opts)
  
