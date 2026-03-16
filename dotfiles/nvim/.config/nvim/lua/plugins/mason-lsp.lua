-- Mason LSP
-- Manages installation of LSP servers and client configuration
-- NOTE: Servers are automatically enabled by mason-lspconfig
return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    "mason-org/mason.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    -- ============================================
    -- Mason (server installation)
    -- ============================================
    require("mason").setup()
    require("mason-lspconfig").setup({
      -- All LSP can be viewed with `:help lspconfig-all` or by visiting: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#yls
      ensure_installed = {
        "bashls",        -- Bash/Shell
        -- "gopls",        -- Go -- TODO: requires Go installed first on computer
        "jsonls",        -- JSON
        "lua_ls",        -- Lua
        "pyright",       -- Python
        "rust_analyzer", -- Rust
        "terraformls",   -- Terraform
        "ts_ls",         -- TypeScript / JavaScript
        "lemminx",       -- XML
      },
      automatic_installation = true,
    })
    -- ============================================
    -- LSP client config (keybindings, format on save)
    -- ============================================
    -- Auto-format on save
    local format_on_save_filetypes = {
      lua = true,
    }
    -- Autocommand to format on save for specified filetypes
    vim.api.nvim_create_autocmd("BufWritePre", {
      callback = function()
        local filetype = vim.bo.filetype
        if format_on_save_filetypes[filetype] then
          vim.lsp.buf.format({ async = false })
        end
      end,
    })
    -- LSP Keybindings
    local lspkeymaps = function(bufnr)
      local opts = { buffer = bufnr }
      -- Navigation
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
      vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "References" })
      vim.keymap.set("n", "gT", vim.lsp.buf.type_definition, { desc = "Go to type definition" })
      -- Information and Refactoring
      vim.keymap.set("n", "K", vim.lsp.buf.hover,
        { desc = "Hover - opens floating window showing documentation (like hovering in VS Code)" })
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,
        { desc = "Rename - smart rename. If renaming a function, will rename in every other file automatically" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,
        { desc = "Code action - quick fixes. Ex. if you have an unused import, this could quickly remove it." })
      -- Diagnostics
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
  end,
}
