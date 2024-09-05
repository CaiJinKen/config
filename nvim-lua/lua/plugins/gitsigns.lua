-- local function is_git_repo()
--   local handle = io.popen('git rev-parse --is-inside-work-tree 2>/dev/null')
--   local result = handle:read("*a")
--   handle:close()
--   return result:match('true') ~= nil
-- end
local function is_git_repo()
  local result = vim.fn.systemlist('git rev-parse --is-inside-work-tree')
  if vim.v.shell_error ~= 0 then
    return false
  end
  if result[1] == 'true' then
    return true
  else
    return false
  end
end

local M = {
  "lewis6991/gitsigns.nvim",
  cond = is_git_repo,
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("gitsigns").setup({})
  end,
}

return { M }
