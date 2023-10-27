local lsp = require('lsp-zero').preset({})

lsp.ensure_installed({
  "lua_ls",
  "rust_analyzer",
  "gopls",
  "tsserver",
  "clangd",
  "pyright",
  "nimls",
  "cssls",
  "zls",
  "astro",
  "svelte",
  "tailwindcss",
})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.format_on_save({
  enable = true,
  format_opts = {
    async = false,
    timeout_ms = 10000,
  },
  servers = {
    ["rust_analyzer"] = {"rust"},
    ["gopls"] = {"go"},
    --["black"] = {"python"},
    ["null_ls"] = {"python"},
  }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    --Enter key confirms completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),
    --Ctrl + Space to trigger completion menu
    --['<C-Space>'] = cmp.mapping.complete(),
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
  }
})

