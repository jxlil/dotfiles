require("toggleterm").setup {}

local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- mappings
map("n", "<C-t>", ":ToggleTerm direction=tab <CR>", default_opts)
map("t", "<ESC>", "<C-\\><C-n>", default_opts)
map("t", "<C-w>", "<C-\\><C-n><C-w>", default_opts)
