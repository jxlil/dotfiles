
local lspconfig = require('lspconfig')
local lsp = require("lsp-zero")

lsp.preset("recommended")

local null_ls = require("null-ls")
local null_ls_opts = lsp.build_options("null-ls", {
})


local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
    on_attach = null_ls_opts.on_attach,
    sources = {
        formatting.prettier,
        formatting.black.with({extra_args = {"--fast", "--line-length=200"}}),
        diagnostics.flake8
    }
})


lsp.setup()

lspconfig.tsserver.setup {
    on_attach = function(client)
        client.server_capabilities.documentFormattingProvider = false
    end
}
