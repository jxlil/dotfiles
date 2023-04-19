local lsp = require('lsp-zero').preset({})

require('mason-null-ls').setup {
  ensure_installed = { "pyright", "isort", "black", "flake8" }
}

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  local default_opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, default_opts)
  vim.keymap.set("n", "<leader>n", vim.diagnostic.goto_next, default_opts)
  vim.keymap.set("n", "<leader>p", vim.diagnostic.goto_prev, default_opts)
end)

local null_ls = require("null-ls")
null_ls.setup({
	sources = {
		null_ls.builtins.diagnostics.flake8,
        null_ls.builtins.formatting.isort.with({
            extra_args = { "--profile=black" },
        }),
		null_ls.builtins.formatting.black.with({
			extra_args = { "--fast", "--line-length=200" },
		}),
	},
})

lsp.format_on_save({
	format_opts = {
		timeout_ms = 1000,
	},
	servers = {
		["null-ls"] = { "python" },
	},
})


lsp.setup()
