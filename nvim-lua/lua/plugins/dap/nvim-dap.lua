local M = {
  "mfussenegger/nvim-dap",
  -- ft = { "go", "lua" },
  lazy = true,
  -- keys = {
  --   { "<F9>",  "<cmd>lua require('dap').continue()<CR>",          mode = "n", desc = "continue run" },
  --   { "<F1>",  "<cmd>lua require('dap').toggle_breakpoint()<CR>", mode = "n", desc = "toggle breakpoint" },
  --   { "<F2>",  "<cmd>lua require('dap').clear_breakpoints()<CR>", mode = "n", desc = "clear all breakpoints" },
  --   { "<F7>",  "<cmd>lua require('dap').step_into()<CR>",         mode = "n", desc = "step into" },
  --   { "<F8>",  "<cmd>lua require('dap').step_over()<CR>",         mode = "n", desc = "step over" },
  --   { "<F12>", "<cmd>lua require('dapui').toggle()<CR>",          mode = "n", desc = "toggle dapui" },
  -- }
  config = function()
    vim.api.nvim_set_keymap('n', "<F9>", ":lua require('dap').continue()<CR>",
      { noremap = true, silent = true, desc = "continue run" })
    vim.api.nvim_set_keymap('n', "<F1>", ":lua require('dap').toggle_breakpoint()<CR>",
      { noremap = true, silent = true, desc = "toggle breakpoint" })
    vim.api.nvim_set_keymap('n', "<F2>", ":lua require('dap').clear_breakpoints()<CR>",
      { noremap = true, silent = true, desc = "clear all breakpoints" })
    vim.api.nvim_set_keymap('n', "<F7>", ":lua require('dap').step_into()<CR>",
      { noremap = true, silent = true, desc = "step into" })
    vim.api.nvim_set_keymap('n', "<F8>", ":lua require('dap').step_over()<CR>",
      { noremap = true, silent = true, desc = "step over" })
  end
}

return { M }
