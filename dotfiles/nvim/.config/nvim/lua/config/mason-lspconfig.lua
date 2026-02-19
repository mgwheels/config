-- Mason LSP Config
-- Manages installation of LSP servers
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "pyright",         -- Python
    "ts_ls",           -- TypeScript / JavaScript
    "lua_ls",          -- Lua
    "terraformls",     -- Terraform
    -- "gopls",           -- Go -- TODO: requires Go installed first on computer
    "rust_analyzer",   -- Rust
    "jsonls",          -- JSON
    "bashls",          -- Bash/Shell
  },
  automatic_installation = true,
})
