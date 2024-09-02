-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- path info
-- vim.fn.stdpath("data") = ~/.local/share/nvim/
-- vim.fn.stdpath("state") = ~/.local/state/nvim/

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Setup lazy.nvim
require("lazy").setup({
	details = {
		lazy = false,
		version = "*",
	},
	spec = {
		-- import your plugins
		{ import = "plugins" },
		{ import = "plugins/themes" },
		{ import = "plugins/dap" },
		{ import = "plugins/lsp" },
	},
	local_spec = false,
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	-- install = { colorscheme = { "habamax" } },
	install = {
		missing = true,
		colorscheme = { "auto" },
	},
	pkg = {
		enabled = false,
	},
	rocks = {
		enabled = false,
	},
	-- automatically check for plugin updates
	checker = {
		enabled = false,
		concurrency = 10,
	},
	ui = {
		warp = true,
		border = "none",
		backdrop = 60,
	},
})
