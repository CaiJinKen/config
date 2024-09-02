local M = {
  "mfussenegger/nvim-dap",
  lazy = true,
  keys = {
    { "<F9>",  "<cmd>lua require('dap').continue()<CR>",          mode = "n", desc = "continue run" },
    { "<F1>",  "<cmd>lua require('dap').toggle_breakpoint()<CR>", mode = "n", desc = "toggle breakpoint" },
    { "<F2>",  "<cmd>lua require('dap').clear_breakpoints()<CR>", mode = "n", desc = "clear all breakpoints" },
    { "<F7>",  "<cmd>lua require('dap').step_into()<CR>",         mode = "n", desc = "step into" },
    { "<F8>",  "<cmd>lua require('dap').step_over()<CR>",         mode = "n", desc = "step over" },
    { "<F12>", "<cmd>lua require('dapui').toggle()<CR>",          mode = "n", desc = "toggle dapui" },
  }
}

return { M }
