return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    -- SET THIS TO 'false' if you see question marks [?]
    local USE_ICONS = true

    require("nvim-tree").setup({
      sort_by = "case_sensitive",

      filters = {
        dotfiles = false,    -- Show files starting with a dot (like .gitignore)
        git_ignored = false, -- Show files listed in .gitignore (like .terraform)
      },

      git = {
        enable = true,  -- Enable git integrations
        ignore = false, -- Optional: If you still want to hide the .git folder itself
      },

      actions = {
        open_file = {
          quit_on_open = true, -- Optional: If you want to collapse tree on open file
        },
      },

      diagnostics = {
        enable = true,
        icons = {
          error = "E",
          warning = "W",
          info = "I",
          hint = "H",
        },
      },

      -- Additional configuration to force v and s to vertical or horizontal split in nvim-tree. No longer need to use CTRL v / CTRL s.
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        -- Load ALL default keybindings first
        api.config.mappings.default_on_attach(bufnr)
        -- Add custom keybindings (s for horizontal, v for vertical)
        vim.keymap.set("n", "s", api.node.open.horizontal, opts("Horizontal Split"))
        vim.keymap.set("n", "v", api.node.open.vertical, opts("Vertical Split"))
      end,

      view = {
        width = 30,
        side = "left",
      },

      renderer = {
        highlight_git = "name",
        group_empty = true,
        icons = {
          -- nvim-web-devicons provides file/folder icons automatically when enabled
          -- (Requires: 1) Nerd Font installed in terminal, 2) nvim-web-devicons plugin loaded)
          -- If you don't have Nerd Font, icons will show as question marks [?] or fallback text
          web_devicons = {
            -- file = { enable = false },   -- UNCOMMENT if Nerd Font NOT installed
            -- folder = { enable = false }, -- UNCOMMENT if Nerd Font NOT installed
          },
          -- This toggle handles the fallback
          show = {
            file = USE_ICONS,
            folder = USE_ICONS,
            folder_arrow = USE_ICONS,
            git = false, -- Set to false to hide git icons showing ?
          },
          -- Fallback glyphs when Nerd Font not available
          -- (uncomment and use these if not using Nerd Font)
          -- glyphs = {
          --   default = "-",
          --   symlink = "s",
          --   folder = {
          --     arrow_closed = ">",
          --     arrow_open = "v",
          --     default = "[D]",
          --     open = "[O]",
          --     empty = "[ ]",
          --     empty_open = "[ ]",
          --   },
          -- },
        },
      },

    })

    -- Keybindings
    vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", { desc = "Toggle nvim-tree" })
    vim.keymap.set('n', '<leader>tf', '<cmd>NvimTreeFindFile<cr>', { desc = 'Find file in nvim-tree' })
    vim.keymap.set('n', '<leader>te', '<cmd>NvimTreeFocus<cr>', { desc = 'Focus (entrace) to nvim-tree' })

    -- Built in keybinds
    --[[
      File Management:
        - r      -- Rename file
        - a      -- Create new file/folder
        - d      -- Delete file
        - x      -- Cut and copy selection to clipboard
        - c      -- Copy to clipboard
        - p      -- Paste clipboard to current location
        - y      -- Yank file name to clipboard

      File Selection:
        - Enter  -- Open file in new buffer
        - Tab    -- Open file in new buffer AND stay in tree

      File Explorer:
        - E      -- Expand all folders
        - W      -- Collapse all folders
        - R      -- Perform refresh / reread of all files in project
    ]] --
  end,
}
