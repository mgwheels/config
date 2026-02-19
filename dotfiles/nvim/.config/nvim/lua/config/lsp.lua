-- LSP Config
-- Sets up keybindings for LSP-enabled buffers
-- NOTE: Servers are automatically enabled by mason-lspconfig
-- LSP Keybindings
local lspkeymaps = function(bufnr)
  local opts = { buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
  vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
  vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
  vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
  -- Diagnostic keybinds
  vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, { buffer = bufnr, desc = "Show diagnostic" })
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { buffer = bufnr, desc = "Previous diagnostic" })
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { buffer = bufnr, desc = "Next diagnostic" })
  vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { buffer = bufnr, desc = "Diagnostic list" })
end
-- Auto-attach keybindings when LSP connects to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    lspkeymaps(args.buf)
  end,
})
