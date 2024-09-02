local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "gopls",
        "lua_ls",
        "clangd",
        "cmake",
        "dockerls",
        "marksman",
        -- "bufls",
        "pbls",    -- protobuf
        "taplo",   -- toml
        "asm-lsp", -- asm
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({})
        end,
        ["gopls"] = function()
          local lspconfig = require("lspconfig")
          lspconfig.gopls.setup({
            settings = {
              gopls = {
                staticcheck = true,
              },
            },
          })
        end,
      },
    })
  end,
}

return { M }
