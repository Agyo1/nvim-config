local luasnip = require("luasnip")

-- Load friendly-snippets (VSCode format)
require("luasnip.loaders.from_vscode").lazy_load()

-- Optional: Snippet jump keybindings
vim.keymap.set({ "i", "s" }, "<C-k>", function()
  if luasnip.expand_or_jumpable() then
    luasnip.expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-j>", function()
  if luasnip.jumpable(-1) then
    luasnip.jump(-1)
  end
end, { silent = true })

-- Optional: Set this if you want LuaSnip to keep history
luasnip.config.set_config({
  history = true,
  updateevents = "TextChanged,TextChangedI",
  enable_autosnippets = true,
})

