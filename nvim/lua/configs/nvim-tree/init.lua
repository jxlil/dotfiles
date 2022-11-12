
require("nvim-tree").setup {
    view = {
        width = 35
    },
    renderer = {
        icons = {
            glyphs = {
                git = {
                    unstaged = "!",
                    staged = "+",
                    unmerged = "#",
                    renamed = ">",
                    untracked = "?",
                    deleted = "-",
                    ignored = "*",
                },
            },
        },
    },
}
