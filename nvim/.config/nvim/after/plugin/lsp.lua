
local lsp = require("lsp-zero").preset({})

lsp.ensure_installed({
  'pyright',
  'gopls',
})

-- Fix Undefined global 'vim'
lsp.nvim_workspace()


local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = {
    {name = 'copilot'},
    {name = 'luasnip'},
    {name = 'nvim_lsp'},
    {name = 'buffer'},
    {name = 'path'},
  },

  mapping = {
	  ["<Tab>"] = cmp_action.luasnip_supertab(),
    ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
	  ['<CR>'] = cmp.mapping.confirm({select = false}),

	  -- Navigate between snippet placeholder
	  ['<C-f>'] = cmp_action.luasnip_jump_forward(),
	  ['<C-b>'] = cmp_action.luasnip_jump_backward(),
	  ['<C-u>'] = cmp.mapping.scroll_docs(-4),
	  ['<C-d>'] = cmp.mapping.scroll_docs(4),
  }
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
end)

lsp.setup()
