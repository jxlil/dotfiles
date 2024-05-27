-- Utilities for creating configurations
local util = require "formatter.util"

-- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
require("formatter").setup {
  logging = false,
  log_level = vim.log.levels.WARN,
  filetype = {
      python = {
          function()
              return {
                  exe = 'isort',
                  args = {'--profile=black', '-q', '-' },
                  stdin = true,
              }
          end,
          function()
              return {
                  exe = 'black',
                  args = {'--fast', '-q', '-'},
                  stdin = true,
              }
          end,
      },
      typescriptreact = {
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
            stdin = true
          }
        end
      },
      typescript = {
        function()
          return {
            exe = "prettier",
            args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), '--single-quote'},
            stdin = true
          }
        end
      },

      ["*"] = {
          -- "formatter.filetypes.any" defines default configurations for any
          -- filetype
          require("formatter.filetypes.any").remove_trailing_whitespace
      }
  }
}

vim.keymap.set("n", "<leader>f", vim.cmd.Format)
vim.keymap.set("n", "<leader>F", vim.cmd.FormatWrite)

-- vim.cmd([[
--     augroup FormatAutogroup
--         autocmd!
--         autocmd BufWritePost * FormatWrite
--     augroup END
-- ]])
