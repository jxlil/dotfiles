
local options = {
    swapfile = false,
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
}

for key, value in pairs(options) do
    vim.opt[key] = value
end

vim.api.nvim_command('filetype plugin indent on')

