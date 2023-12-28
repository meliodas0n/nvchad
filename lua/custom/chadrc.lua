---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "ashes",
  theme_toggle = { "ashes", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

vim.opt.number = true

-- Define the key mappings for <F2>, <F3>, and <F4>
vim.api.nvim_set_keymap("n", "<F2>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F3>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F4>", ":bd<CR>", { noremap = true, silent = true })

-- Map leader + [ to move indent left
vim.api.nvim_set_keymap("n", "<leader>[", "<<", { noremap = true })
-- Map leader + ] to move indent right
vim.api.nvim_set_keymap("n", "<leader>]", ">>", { noremap = true })
-- Map leader + [ in visual mode to indent left
vim.api.nvim_set_keymap("v", "<leader>[", "<gv", { noremap = true })
-- Map leader + ] in visual mode to indent right
vim.api.nvim_set_keymap("v", "<leader>]", ">gv", { noremap = true })

-- Set transparency for floating windows (requires Neovim 0.5+)
vim.cmd "highlight NormalFloat guibg=none" -- Make floating windows transparent
vim.cmd "highlight FloatBorder guifg=none" -- Optional: Make float borders transparent

-- Set the transparency level using winblend
vim.cmd "autocmd FileType * setlocal winblend=10" -- Adjust the transparency level (0-100)

return M
