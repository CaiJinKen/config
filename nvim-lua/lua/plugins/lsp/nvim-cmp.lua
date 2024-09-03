local M = {
  "hrsh7th/nvim-cmp",
  lazy = true,
  event = "InsertEnter",
  dependencies = {
    { "onsails/lspkind.nvim" },
    { "petertriho/cmp-git",      opts = {} },
    { "hrsh7th/cmp-nvim-lsp",    opts = {} },
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/cmp-emoji" },
    { "hrsh7th/cmp-nvim-lua" },
    { "hrsh7th/cmp-cmdline" },
    { "Snikimonkd/cmp-go-pkgs" },
    { "saadparwaiz1/cmp_luasnip" },
    { "L3MON4D3/LuaSnip" },
    { "tamago324/cmp-zsh" },
  },
  config = function()
    local cmp = require("cmp")
    local cmp_action = require("lsp-zero").cmp_action()
    local lspkind = require('lspkind')

    cmp.setup({
      -- complete data source
      sources = {
        { name = "nvim_lsp" },
        { name = "git" },
        { name = "buffer" },
        { name = "path" },
        { name = "nvim_lua" },
        { name = "emoji" },
        { name = "luasnip" },
        { name = "go_pkgs" },
        { name = "zsh" },
      },
      -- select first item by default
      preselect = "item",
      completion = {
        completeopt = "menu,menuone,noinsert",
      },

      mapping = cmp.mapping.preset.insert({
        -- `Enter` key to confirm completion
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        -- Ctrl+Space to trigger completion menu
        ["<C-Space>"] = cmp.mapping.complete(),
        -- Navigate between snippet placeholder
        --  neovim self snippet
        -- ["<C-f>"] = cmp_action.vim_snippet_jump_forward(),
        -- ["<C-b>"] = cmp_action.vim_snippet_jump_backward(),
        -- luasnip
        ["<C-f>"] = cmp_action.luasnip_jump_forward(),
        ["<C-b>"] = cmp_action.luasnip_jump_backward(),
        -- Scroll up and down in the completion documentation
        ["<C-u>"] = cmp.mapping.scroll_docs(-4),
        ["<C-d>"] = cmp.mapping.scroll_docs(4),

        ["<Tab>"] = cmp_action.luasnip_supertab(),
        ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
      }),

      -- set completion borders to menu
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },

      snippet = {
        expand = function(args)
          -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
          -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
          require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
          -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
          -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        end,
      },
      -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      }),

      -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline(":", {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
        matching = { disallow_symbol_nonprefix_matching = false },
      }),

      --custom menu
      formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol_text', -- show only symbol annotations
          menu = {
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            nvim_lua = "[Lua]",
            latex_symbols = "[Latex]",
          },
          maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
          -- can also be a function to dynamically calculate max width such as
          -- maxwidth = function() return math.floor(0.45 * vim.o.columns) end,
          ellipsis_char = '...',    -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
          show_labelDetails = true, -- show labelDetails in menu. Disabled by default

          -- The function below will be called before any actual modifications from lspkind
          -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
          before = function(entry, vim_item)
            return vim_item
          end
        })
      }
    })

    -- Set up lspconfig cmp
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    -- with each lsp server enabled.
    require("lspconfig")["gopls"].setup({
      capabilities = capabilities,
    })
    require("lspconfig")["lua_ls"].setup({
      capabilities = capabilities,
    })

    -- autopairs with cmp
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}

return { M }
