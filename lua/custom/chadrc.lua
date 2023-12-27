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

return M
