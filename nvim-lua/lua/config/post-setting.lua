--vim.cmd[[
--  colorscheme tokyonight
--]]

-- vim.cmd "colorscheme tokyonight"
vim.cmd("colorscheme material")
vim.g.material_style = "deep oceani"

-- vim.api.nvim_create_augroup("jsontogo", { clear = true })
-- vim.api.nvim_create_autocmd("FileType", {
-- 	group = "jsontogo",
-- 	pattern = "lua",
-- 	-- command = 'command! -bar -nargs=0 -range=% JsonToGo lua require("swagen).JsonToGo(<line1>, <line2>)'
-- 	command = 'command! -bar -nargs=0 -range=% JsonToGo lua require("swagen).JsonToGo()',
-- })

-- vim.api.nvim_exec(
-- 	[[
--   augroup jsontogo
--     augroup!
--     autocmd FileType lua command! -bar -nargs=0 -range=% JsonToGo lua JsonToGo(<line1>, <line2>)
--   augroup END
-- ]],
-- 	false
-- )

-- set vim-easy-align
-- vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", {})
-- vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", {})

-- 定义一个 Lua 函数来调用 <Plug>(EasyAlign)

-- function easy_align()
-- 	require("noice").disable()
-- 	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Plug>(EasyAlign)", true, true, true), "n", true)
-- 	require("noice").enable()
-- end

-- 使用 vim.api.nvim_set_keymap 绑定快捷键映射
-- vim.api.nvim_set_keymap("n", "ga", ":lua easy_align()<CR>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("x", "ga", ":lua easy_align()<CR>", { noremap = true, silent = true })
--
--
-- 创建一个名为 jsontogo 的自动组

-- vim.api.nvim_exec(
-- 	[[
-- augroup jsontogo
--     autocmd!
--     autocmd FileType lua command! -bar -nargs=0 -buffer -range=% JsonToGo <line1>,<line2>lua require("swagen").JsonToGo(<line1>, <line2>)
-- augroup end
-- ]],
-- 	false
-- )

-- 创建一个自动组
-- local jsontogo_group = vim.api.nvim_create_augroup("jsontogo", { clear = true })

-- 添加第一个命令，当文件类型为 go 时定义 JsonToGo 命令
-- vim.api.nvim_create_autocmd("FileType", {
-- 	group = jsontogo_group,
-- 	pattern = "lua",
-- 	command = "command! -bar -nargs=0 -buffer -range=% JsonToGo <line1>,<line2>lua require('swagen').JsonToGo(<line1>, <line2>)",
-- })

-- 添加第二个命令，作为示例，可以是任何其他需要的命令
-- vim.api.nvim_create_autocmd("FileType", {
-- 	group = jsontogo_group,
-- 	pattern = "lua",
-- 	command = "echo 'Go file detected!'",
-- })

-- autocmd FileType lua command! -bar -nargs=0 -buffer -range=% JsonToGo <line1>,<line2>lua JsonToGo(<line1>, <line2>)

-- 定义一个 Lua 函数来替代 Vim 脚本中的 s:JsonToGo() 函数
-- function JsonToGo(firstline, lastline)
-- require("swagen").JsonToGo(firstline, lastline)
-- local cmd = "!gojson"
-- local name = vim.fn.expand('%:r')
-- local pkg = vim.fn.expand('%:r')
-- local range = firstline .. "," .. lastline
--
-- local full_cmd = range .. " " .. cmd .. " -name " .. name .. " -pkg " .. pkg
-- print("line1", firstline, "line2", lastline)
-- vim.api.nvim_command("!gojson -h")
-- end
