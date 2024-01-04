---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadtain",
  hl_override = highlights.override,
  hl_add = highlights.add,
  transparency = false,

  -- nvdash (dashboard)
  nvdash = {
    load_on_startup = true,

    header = {
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
    },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m a", "Telescope marks" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },

    cheatsheet = { theme = "grid" }, -- simple/grid

    lsp = {
      -- show function signatures i.e args as you type
      signature = {
        disabled = false,
        silent = true, -- silences 'no signature help available' message from appearing
      },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

vim.opt.number = true

-- Define the key mappings for <F2>, <F3>, and <F4>
vim.api.nvim_set_keymap("n", "<F2>", ":bprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F3>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<F4>", ":bd<CR>", { noremap = true, silent = true })

-- Indentation using leader[ and leader]
vim.api.nvim_set_keymap("n", "<leader>[", "<<", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>]", ">>", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>[", "<gv", { noremap = true })
vim.api.nvim_set_keymap("v", "<leader>]", ">gv", { noremap = true })

-- Define custom key mappings for splitting horizontally and vertically
vim.api.nvim_set_keymap("n", "<Leader>-", ":split<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>|", ":vsplit<CR>", { noremap = true, silent = true })

-- Move between split windows using leader key + arrow keys
vim.api.nvim_set_keymap("n", "<Leader><Up>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader><Down>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader><Left>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<Leader><Right>", "<C-w>l", { noremap = true })

return M
