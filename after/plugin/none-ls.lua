local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_buf_create_user_command(bufnr, "Format", function()
        vim.lsp.buf.format({ bufnr = bufnr })
      end, {})
    end
  end,
})

