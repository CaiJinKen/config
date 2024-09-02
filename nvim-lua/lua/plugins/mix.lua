local M = {
	{
		"nvim-lua/plenary.nvim",
	},
	{
		"HiPhish/rainbow-delimiters.nvim",
	},
	{
		"nvim-tree/nvim-web-devicons",
		opts = {
			color_icons = true,
			default = true,
			strict = true,
		},
	},
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = {},
	},
	{
		"terrortylor/nvim-comment",
	},
	{
		"kylechui/nvim-surround",
	},
	{
		"preservim/tagbar",
		lazy = true,
		keys = {
			{ "<leader>t", "<cmd>:TagbarToggle<CR>", mode = "n", desc = "toggle tagbar" },
		},
	},
	{
		"junegunn/vim-easy-align",
		-- lazy = true,
		config = function()
			vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", {})
			vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", {})
		end,
	},
	{
		"easymotion/vim-easymotion",
		config = function()
			vim.cmd([[
      " 在normal模式下，使用快捷键 ss 再输入目标单词的2字母，easymotion就会在目标单词随机高亮生一个字母，再次按下这个字母，即可快速移动光标到目标单词。注意是当前屏幕显示区域，不是当前整个文件。
      nnoremap ss <Plug>(easymotion-s2)
      ]])
		end,
	},
  {
    "CaiJinKen/toolkit.nvim",
    ft = {"go","lua"},
    branch = "master",
  }
}

return M
