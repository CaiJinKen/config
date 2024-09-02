local M = {
	"nvim-treesitter/nvim-treesitter",
	lazy = true,
	ft = { "c", "lua", "vim", "sh", "go", "sql", "toml", "yaml", "asm", "s", "json", "md", "markdown" },
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"markdown",
				"bash",
				"go",
				"gomod",
				"gowork",
				"dockerfile",
				"sql",
				"toml",
				"yaml",
				"nasm",
				"json",
				"jsonc",
				"json5",
				"markdown_inline",
				"cmake",
				"regex",
			},
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			additional_vim_regex_highlighting = false,
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "gnn",
					node_incremental = "grn",
					scope_incremental = "grc",
					node_decremental = "grm",
				},
			},
			indent = { enable = true },
		})
	end,

	--  opts = {
	--    highlight = { enable = true },
	--    indent = { enable = true },
	--    ensure_installed = {
	--      "c", "lua", "vim", "vimdoc","markdown", "bash", "go", "gomod","gowork", "dockerfile",
	--      "sql", "toml", "yaml", "nasm", "json", "jsonc","json5", "markdown_inline", "cmake",
	--    },
	--    sync_install = false,
	--    additional_vim_regex_highlighting = false,
	--    incremental_selection = {
	--        enable = true,
	--        keymaps = {
	--            init_selection = "gnn",
	--            node_incremental = "grn",
	--            scope_incremental = "grc",
	--            node_decremental = "grm",
	--        },
	--    },
	--  }
}

return { M }
