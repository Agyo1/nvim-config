-- lua/lsp.lua
local lsp_zero = require('lsp-zero')

-- Recommended settings (safe defaults)
lsp_zero.on_attach(function(client, bufnr)
  -- Default keymaps
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- Setup mason and ensure LSPs are installed
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'lua_ls', 'pyright'}, -- Add your LSPs here
  handlers = {
    lsp_zero.default_setup,
  },
})

