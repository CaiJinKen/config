local M = {
  "VonHeikemen/lsp-zero.nvim",
  branch = "v4.x",
  lazy = true,
  ft = { "lua", "go", "proto", "asm", "s", "vmasm" },
  config = function()
    local lsp_zero = require("lsp-zero")
    local lsp_attach = function(client, bufnr)
      local opts = { buffer = bufnr }

      -- display document of under the coursor simbol with a floating area
      vim.keymap.set("n", "K", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
      vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
      vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts) -- not supported by gopls
      vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
      -- jumps to the definition of the type of the symbol under the cursor
      vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
      vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
      -- list all sites call the simbol under the coursor (like references but exclude definition)
      vim.keymap.set("n", "gc", "<cmd>lua vim.lsp.buf.incoming_calls()<cr>", opts)
      -- list all site called by symbol that under the coursor
      vim.keymap.set("n", "goc", "<cmd>lua vim.lsp.buf.outgoing_calls()<cr>", opts)
      vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
      -- renames all references to the symbol under the coursor
      vim.keymap.set("n", "rn", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
      vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = false})<cr>", opts)
      vim.keymap.set("n", "<leader>a", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)

      lsp_zero.buffer_autoformat()
    end

    lsp_zero.extend_lspconfig({
      sign_text = true,
      lsp_attach = lsp_attach,
      capabilities = require("cmp_nvim_lsp").default_capabilities(),
    })
  end,
}

return { M }
