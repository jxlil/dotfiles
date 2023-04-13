
require("lualine").setup {
    options = {
        theme = "gruvbox",
        component_separators = {left = "", right = ""},
        section_separators = { left = "", right = "" },
    },

    sections = {
        lualine_b = {
            {
                "filetype",
                icon_only = true
            },
            {
                'filename',
                file_status = true,
                path = 1,
                shorting_target = 40,
                symbols = {
                    modified = ' (+)',
                    readonly = ' (-)',
                    unnamed = '(unnamed)',
                }
            }
        },

        lualine_c = {
            {
                "diagnostics",
                symbols = {error = " ", warn = " ", info = " ", hint = " "}
            }
        },

        lualine_x = {},
        lualine_y = {
            {
                'diff',
                symbols = { added = ' ', modified = ' ', removed = ' ' },
                source = nil,
            }
        },

        lualine_z = {
            {
                "branch",
                icon = "",
            }
        },
    },

    extensions = {"nvim-tree"}

}
