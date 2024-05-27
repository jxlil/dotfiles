vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>tr", vim.cmd.Trouble)
vim.keymap.set("n", "<leader>nt", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>ps", vim.cmd.PackerSync)

-- move selected block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- clear search highlight
vim.keymap.set("n", "<ESC>", ":noh<CR><ESC>")

-- control tabs
vim.keymap.set("n", "<C-t>", ":tabnew<CR>")
vim.keymap.set("n", "<C-w>", ":tabclose<CR>")
vim.keymap.set("n", "<C-h>", ":tabp<CR>")
vim.keymap.set("n", "<C-l>", ":tabn<CR>")

-- control window
vim.keymap.set("n", "<leader>h", ":wincmd h<cr>")
vim.keymap.set("n", "<leader>j", ":wincmd j<cr>")
vim.keymap.set("n", "<leader>k", ":wincmd k<cr>")
vim.keymap.set("n", "<leader>l", ":wincmd l<cr>")
