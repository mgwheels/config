-- Ultra-modern fold management with preview capability
-- Uses treesitter (already installed) to automatically fold functions, classes, etc.
-- Dependencies: promise-async (used internally for async operations)
return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  config = function()
    require("ufo").setup({
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    })
  end,
}
--[[ Keybinds for nvim-ufo:
  za         Toggle fold at cursor (built-in)
  zA         Toggle fold recursively (built-in)
  zo         Open fold (built-in)
  zO         Open fold recursively (built-in)
  zc         Close fold (built-in)
  zC         Close fold recursively (built-in)
  zR         Open ALL folds (built-in)
  zM         Close ALL folds (built-in)
  zm         Close one fold level (built-in)
  zr         Open one fold level (built-in)
  zj         Jump to next fold (built-in)
  zk         Jump to previous fold (built-in)
  [z         Jump to fold start (built-in)
  ]z         Jump to fold end (built-in)
  zf         Create manual fold (e.g. 3zf to fold 3 lines) (built-in)
--]]
