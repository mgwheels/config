-- LSP Config
-- Sets up LSP servers and attaches keybindings to LSP-enabled buffers
-- Enable LSP servers (these must be installed via Mason)
vim.lsp.enable("pyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("lua_ls")
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
end
-- Auto-attach keybindings when LSP connects to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    lspkeymaps(args.buf)
  end,
})
