local M = {
  "folke/noice.nvim",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  -- enabled = false,
  opts = {
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
    -- you can enable a preset for easier configuration
    presets = {
      bottom_search = false,         -- use a classic bottom cmdline for search
      command_palette = false,       -- position the cmdline and popupmenu together
      long_message_to_split = false, -- long messages will be sent to a split
      inc_rename = false,            -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = false,        -- add a border to hover docs and signature help
    },

    -- custom route
    routes = {
      {
        view = "notify",
        filter = {
          event = "msg_show",
          ["not"] = { kind = { "confirm", "confirm_sub", "search_count" } },
        },
        opts = { replace = false, merge = true, title = "Merge Attempt" },
      },
      {
        view = "confirm",
        filter = {
          find = "ENTER",
          cmdline = true,
          event = { "msg_show" },
          has = false,
          kind = { "confirm", "confirm_sub" },
        },
        opts = { replace = false, merge = false, title = "Self Define" },
      },
      -- {
      -- 	filter = {
      -- 		event = "msg_show",
      -- 		find = "已发生变动",
      -- 		-- kind = { "confirm", "confirm_sub" },
      -- 	},
      -- 	view = "notify",
      -- 	opts = { level = "warn" },
      -- },
      -- {
      -- 	filter = {
      -- 		event = "msg_show",
      -- 		find = "确实要写入吗 %(y/n%)?",
      -- 	},
      -- 	view = "confirm",
      -- 	opts = {
      -- 		title = "文件变动警告",
      -- 		message = "文件已修改，是否确认写入？",
      -- 		level = "warn",
      -- 	},
      -- },
    },
  },
}

-- disable noice when use vim-esay-align
-- vim.api.nvim_set_keymap("n","ga",":EasyAlign")
-- vim.api.nvim_set_keymap("x","ga",":EasyAlign")

return { M }
