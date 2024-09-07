vim.g.mapleader = ","
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = true })
-- vim.cmd("syntax on")

vim.opt.mouse = ""
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"
vim.opt.title = true
vim.opt.list = true
vim.opt.number = true
vim.opt.cursorcolumn = true
vim.opt.cursorline = true
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.backspace = "indent,eol,start"
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrapmargin = 2
vim.opt.showmatch = true
vim.opt.autoindent = true
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }

vim.g.python3_host_prog = "/usr/local/bin/python3.12"
vim.g.ruby_host_prog = "/usr/bin/ruby"

-- 禁用 netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function map_leadern_to_ngt()
  for i = 1, 9 do
    vim.api.nvim_set_keymap("n", "<leader>" .. i, i .. "gt", { noremap = true, silent = true })
  end
end

map_leadern_to_ngt()

-- 等同于下面

-- vim.api.nvim_set_keymap("n","<leder>1","1gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>2","2gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>3","3gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>4","4gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>5","5gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>6","6gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>7","7gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>8","8gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>9","9gt",{noremap = true, silent = true})
-- vim.api.nvim_set_keymap("n","<leder>0",":tablast",{noremap = true, silent = true})
--

-- -- Move window
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-l>", "<C-w>l")
--
-- -- Resize window
-- vim.keymap.set("n", "<C><left>", "<C-w><", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C><right>", "<C-w>>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C><up>", "<C-w>=", { noremap = true, silent = true })
-- vim.keymap.set("n", "<C><down>", "<C-w>-", { noremap = true, silent = true })

-- 使用 Alt 键来调整窗口大小
vim.api.nvim_set_keymap('n', '<M-Left>', '<C-w><', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Right>', '<C-w>>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Up>', '<C-w>+', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-Down>', '<C-w>-', { noremap = true, silent = true })
