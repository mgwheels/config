-- Mason LSP Config
-- Manages installation of LSP servers (pyright, ts_ls, lua_ls)
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "ts_ls", "lua_ls" },
  automatic_installation = true,
})
