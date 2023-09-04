
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = true, -- disables setting the background color.
    term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    integrations = {
        cmp = true,
        treesitter = true,
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"
