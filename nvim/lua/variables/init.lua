
local g = vim.g

g.mapleader = " "
g.foldmethod = "indent"

g.background = "dark"
g.t_co = 256

local packer_path = vim.fn.stdpath("config") .. "/site"
vim.o.packpath = vim.o.packpath .. "," .. packer_path
