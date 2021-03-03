local M = {}

M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "nvim config",
    cwd = "~/.config/nvim/",
  })
end

return M
