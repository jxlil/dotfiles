
local languages = {
    "python",
    "bash",
    "lua",
    "css",
    "dockerfile",
    "json",
    "typescript"
}

require("nvim-treesitter.configs").setup {
    ensure_installed = languages,
    indent = {
        enable = true
    },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
}
