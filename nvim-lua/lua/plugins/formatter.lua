local M = {
  "mhartington/formatter.nvim",
  lazy = true,
  ft = { "go", "lua", "md", "markdown", "yaml", "sh", "toml", "proto", "json", "jsonc", "asm" },
  config = function()
    require("formatter").setup({
      logging = true,
      log_level = vim.log.levels.TRACE,
      logfile = "/Users/caijin/.local/state/nvim/formatter.log",
      filetype = {
        go = {
          -- require("formatter.filetypes.go").gofmt,
          -- require("formatter.filetypes.go").golines,
          -- require("formatter.filetypes.go").goimports,
          -- require("formatter.filetypes.go").gofumpt,
          require("formatter.filetypes.go").gofumports,
          function()
            local util = require("formatter.util")
            return {
              exe = "goimports-reviser",
              args = {
                "-rm-unused -set-alias -format",
                '-imports-order "std,company,project,general"',
                '-output stdout',
                util.escape_path(util.get_current_buffer_file_path()),
              },
              stdin = true,
            }
          end,
        },
        lua = { require("formatter.filetypes.lua").stylua },
        toml = { require("formatter.filetypes.toml").taplo },
        yaml = { require("formatter.filetypes.yaml").yamlfmt },
        sh = { require("formatter.filetypes.sh").shfmt },
        proto = { require("formatter.filetypes.proto").buf_format },
        markdown = { require("formatter.filetypes.markdown").denofmt },
        json = { require("formatter.filetypes.json").denofmt },
        jsonc = { require("formatter.filetypes.json").denofmt },
        asm = {
          function()
            return {
              exe = "asmfmt",
              stdin = true,
            }
          end

        }
        -- sql = { require("formatter.filetypes.sql").sqlfluff },
      },
    })
  end,
}

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePre", {
  group = "__formatter__",
  command = ":FormatWrite",
})

-- auto load changed file to buffer
vim.cmd([[
  augroup AutoReload
    autocmd!
    autocmd FocusGained,BufEnter * :checktime
  augroup END
]])

-- auto relad current buffer after FormatterPost event trigger
-- vim.api.nvim_exec(
-- 	[[
--   augroup FormatAutogroup
--     autocmd!
--     autocmd User FormatterPost lua ReloadBufferIfExists()
--   augroup END
-- ]],
-- 	true
-- )

-- reload buffer if exists
-- function ReloadBufferIfExists()
-- 	local buf = vim.api.nvim_get_current_buf()
-- 	if vim.api.nvim_buf_is_loaded(buf) then
-- 		-- reload current buffer
-- 		vim.api.nvim_command("edit")
-- 	else
-- 		print("Buffer does not exist.")
-- 	end
-- end

return { M }
