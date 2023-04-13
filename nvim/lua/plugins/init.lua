
return require("packer").startup(function(use)
    use {"wbthomason/packer.nvim"}

    use { "ellisonleao/gruvbox.nvim" }
    use {"nvim-lualine/lualine.nvim"}
    use {"mg979/vim-visual-multi"}

    use {
        "kyazdani42/nvim-tree.lua",
        requires = {
            "kyazdani42/nvim-web-devicons", 
    }}

    use {"akinsho/toggleterm.nvim", tag='v2.*'}

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
        "VonHeikemen/lsp-zero.nvim",
        requires = {
            -- LSP Support
            {"neovim/nvim-lspconfig"},
            {"williamboman/nvim-lsp-installer"},
            {"jose-elias-alvarez/null-ls.nvim"},

            -- Autocomplete
            {"hrsh7th/nvim-cmp"},
            {"hrsh7th/cmp-buffer"},
            {"hrsh7th/cmp-path"},
            {"saadparwaiz1/cmp_luasnip"},
            {"hrsh7th/cmp-nvim-lsp"},
            {"hrsh7th/cmp-nvim-lua"},
            {"windwp/nvim-autopairs"},

            -- Snippets
            {"L3MON4D3/LuaSnip"},
            {"rafamadriz/friendly-snippets"},
        }
    }

end)

