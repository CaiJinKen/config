local M = {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			disable_netrw = true, -- 确保禁用 netrw
			hijack_netrw = true, -- 确保 hijack netrw
			update_cwd = true, -- 更新当前工作目录
			view = {
				centralize_selection = false,
				cursorline = true,
				debounce_delay = 15,
				side = "left",
				preserve_window_proportions = false,
				number = true,
				relativenumber = false,
				signcolumn = "yes",
				width = 30,
				float = {
					enable = false,
					quit_on_focus_loss = true,
					open_win_config = {
						relative = "editor",
						border = "rounded",
						width = 30,
						height = 30,
						row = 1,
						col = 1,
					},
				},
			},

			-- 展示git忽略的文件
			-- filters = {
			-- 	custom = {}, -- 清空自定义过滤器
			-- },
			git = {
				ignore = false, -- 不忽略 .gitignore 中的文件
			},
		})
	end,
}

-- 设置快捷键打开和关闭 nvim-tree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>v", ":NvimTreeFindFileToggle<CR>", { noremap = true, silent = true })
--vim.keymap.set('n', '?',     api.tree.toggle_help,                  opts('Help'))
-- 设置标签页管理快捷键
vim.api.nvim_set_keymap("n", "<leader>tn", ":tabnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tp", ":tabprevious<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tc", ":tabnew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>tq", ":tabclose<CR>", { noremap = true, silent = true })

return { M }
