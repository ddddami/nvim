return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true,
    enable_git_status = true,

    filesystem = {
      filtered_items = {
        visible = true,
        hide_gitignored = false,
      },
      follow_current_file = { enabled = true },
      use_libuv_file_watcher = true,
    },

    window = {
      width = 28,
      mappings = { ["<space>"] = "none" },
    },

    default_component_configs = {
      indent = { padding = 0 },
      icon = {
        folder_closed = "",
        -- folder_open = "",
        folder_empty = "",
      },
      name = {
        use_git_status_colors = true,
        highlight = "NeoTreeFileName",
      },
      git_status = {
        symbols = {
          added = "✚",
          modified = "",
          deleted = "✖",
          renamed = "󰁕",
          untracked = "",
          unstaged = "○",
          staged = "●",
          conflict = "!",
        },
      },
    },
  },
}
