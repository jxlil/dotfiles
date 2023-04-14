local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

-- nvim-tree
map("n", "<leader>nt", ":NvimTreeToggle<cr>", default_opts)

-- Move window
map("n", "<leader>h", ":wincmd h<cr>", default_opts)
map("n", "<leader>j", ":wincmd j<cr>", default_opts)
map("n", "<leader>k", ":wincmd k<cr>", default_opts)
map("n", "<leader>l", ":wincmd l<cr>", default_opts)

-- Tabs
map("n", "<C-t>", ":tabnew<cr>", default_opts)
map("n", "<C-w>", ":tabclose<cr>", default_opts)
map("n", "<C-h>", ":tabp<cr>", default_opts)
map("n", "<C-l>", ":tabn<cr>", default_opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<cr>", default_opts)
map("n", "<leader>fg", ":Telescope live_grep<cr>", default_opts)
map("n", "<leader>fb", ":Telescope buffers<cr>", default_opts)

-- ToggleTerm 
map("n", "<C-t>", ":ToggleTerm direction=tab <CR>", default_opts)
map("t", "<esc>", "<C-\\><C-n>", default_opts)
map("t", "<C-w>", "<C-\\><C-n><C-w>", default_opts)

-- Fast scrolling
map('n', '<C-j>', '<C-d>zz', default_opts)
map('n', '<C-k>', '<C-u>zz', default_opts)

-- clear search highlight
map("n", "<esc>", ":noh<return><esc>", default_opts)
