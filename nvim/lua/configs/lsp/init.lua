
local lspconfig = require('lspconfig')
local lsp = require("lsp-zero")

lsp.preset("recommended")

local null_ls = require("null-ls")
local null_ls_opts = lsp.build_options("null-ls", {
    on_attach = function(client)
        if client.server_capabilities.documentFormattingProvider then
            vim.api.nvim_create_autocmd("BufWritePre", {
                desc = "Auto format before save",
                pattern = "<buffer>",
                callback = vim.lsp.buf.formatting_sync,
            })
        end
    end
})


local formatting = null_ls.builtins.formatting
null_ls.setup({
    on_attach = null_ls_opts.on_attach,
    sources = {
        formatting.black.with({extra_args = {"--fast"}}),
        formatting.prettier
    }
})


lsp.setup()

lspconfig.tsserver.setup {
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false

    end
} 
