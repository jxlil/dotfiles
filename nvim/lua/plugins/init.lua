
return require("packer").startup(function(use)
    use {"wbthomason/packer.nvim"}
    use {"akinsho/toggleterm.nvim", tag='v2.*'}
    use {"ellisonleao/gruvbox.nvim"}
    use {"nvim-lualine/lualine.nvim"}
    use {"mg979/vim-visual-multi"}
    use {"windwp/nvim-autopairs"}

    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons", 
    }}

    -- Telescope
    use {
        "nvim-telescope/telescope.nvim",
        requires = {
            {"nvim-lua/plenary.nvim"},
            {"nvim-treesitter/nvim-treesitter"}
    }}

    -- Git
    use {"tpope/vim-fugitive"}
    use {"lewis6991/gitsigns.nvim"}

    -- Fold
    use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {"williamboman/mason-lspconfig.nvim"},
            {                                      -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},     -- Required
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"saadparwaiz1/cmp_luasnip"},
            {'L3MON4D3/LuaSnip'},     -- Required
        }
    }
    use {
        "jose-elias-alvarez/null-ls.nvim",
        requires = {
            "williamboman/mason.nvim",
            "jay-babu/mason-null-ls.nvim",
        },
    }
end)

