local function my_on_attach(bufnr)
  local api = require "nvim-tree.api"

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-b>', api.tree.change_root_to_parent, opts('Up'))
  vim.keymap.set('n', '<esc>', api.tree.close, opts('Close'))
  vim.keymap.set('n', '?',     api.tree.toggle_help, opts('Help'))

end


-- pass to setup along with your other options
require("nvim-tree").setup {
  on_attach = my_on_attach,
  view = { width = 35},
  renderer = {
      icons = {
          show = {
            file = false,
            folder = false,
          },
          glyphs = {
            folder = {
              arrow_closed = "[+]",
              arrow_open = "[-]",
            },
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
