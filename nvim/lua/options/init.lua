
local options = {
    encoding = "utf-8",
    syntax = "on",
    mouse = "a",
    termguicolors = true,
    relativenumber = true,
    signcolumn = "yes",
    number = true,
    cursorline = true,
    ruler = true,
    clipboard = [[unnamed,unnamedplus]],
    smartindent = true,
    autoindent = true,
    expandtab = true,
    softtabstop = 4,
    shiftwidth = 4,
    tabstop = 4,
    foldmethod = "indent",

    -- undofiles, swapfiles, backup
    undodir = vim.fn.expand('~/.dotfiles/nvim/undodir'),
    undofile = true,
    swapfile = false,
    backup = false,
    
    background = "dark",
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

vim.api.nvim_command('filetype plugin indent on')

local packer_path = vim.fn.stdpath("config") .. "/site"
vim.o.packpath = vim.o.packpath .. "," .. packer_path

local g = vim.g
g.mapleader = " "
