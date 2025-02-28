-- You can also add or configure plugins by creating files in this `plugins/` folder
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  "andweeb/presence.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },

  -- == Examples of Overriding Plugins ==

  -- customize alpha options
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      -- customize the dashboard header
      opts.section.header.val = {
        "                                                                          ",
        " █████  ███████ ████████ ██████   ██████  ███    ██ ██    ██ ██ ███    ███",
        "██   ██ ██         ██    ██   ██ ██    ██ ████   ██ ██    ██ ██ ████  ████",
        "███████ ███████    ██    ██████  ██    ██ ██ ██  ██ ██    ██ ██ ██ ████ ██",
        "██   ██      ██    ██    ██   ██ ██    ██ ██  ██ ██  ██  ██  ██ ██  ██  ██",
        "██   ██ ███████    ██    ██   ██  ██████  ██   ████   ████   ██ ██      ██",
      }
      return opts
    end,
  },

  -- You can disable default plugins as follows:
  { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  {
    "L3MON4D3/LuaSnip",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.luasnip" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom luasnip configuration such as filetype extend or custom snippets
      local luasnip = require "luasnip"
      luasnip.filetype_extend("javascript", { "javascriptreact" })
    end,
  },

  {
    "windwp/nvim-autopairs",
    config = function(plugin, opts)
      require "astronvim.plugins.configs.nvim-autopairs" (plugin, opts) -- include the default astronvim config that calls the setup call
      -- add more custom autopairs configuration such as custom rules
      local npairs = require "nvim-autopairs"
      local Rule = require "nvim-autopairs.rule"
      local cond = require "nvim-autopairs.conds"
      npairs.add_rules(
        {
          Rule("$", "$", { "tex", "latex" })
          -- don't add a pair if the next character is %
              :with_pair(cond.not_after_regex "%%")
          -- don't add a pair if  the previous character is xxx
              :with_pair(
                cond.not_before_regex("xxx", 3)
              )
          -- don't move right when repeat character
              :with_move(cond.none())
          -- don't delete if the next character is xx
              :with_del(cond.not_after_regex "xx")
          -- disable adding a newline when you press <cr>
              :with_cr(cond.none()),
        },
        -- disable for .vim files, but it work for another filetypes
        Rule("a", "a", "-vim")
      )
    end,
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require "telescope"
      telescope.setup {
        defaults = {
          file_ignore_patterns = {
            -- Node.js
            "node_modules/",

            -- PHP
            "vendor/",

            -- Version Control
            "^%.git/",

            -- Build and Dependency Directories
            "^build/",
            "^dist/",
            "^out/",

            -- IDE and Editor Specific
            "%.idea/",
            "%.vscode/",
            "%.sublime%-project",
            "%.sublime%-workspace",

            -- Compiled and Temporary Files
            "%.compiled",
            "%.min%.js$",
            "%.min%.css$",
            "^%.tmp/",
            "^%.temp/",

            -- Specific Language Artifacts
            "%.class$", -- Java
            "%.pyc$",   -- Python
            "%.log$",   -- Log files

            -- macOS Specific
            "%.DS_Store",
          },
        },
      }
    end,
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      -- Configuration options
      vim.g.gruvbox_material_background = "mix"
      vim.g.gruvbox_material_better_performance = 1
      vim.g.gruvbox_material_enable_italic = 1
      -- vim.g.gruvbox_material_foreground = 'mix'

      vim.g.gruvbox_material_diagnostic_line_highlight = 1
      vim.g.gruvbox_material_diagnostic_virtual_text = "colored"
      vim.g.gruvbox_material_spell_foreground = "colored"

      -- For setting it as the default colorscheme
      vim.cmd "colorscheme gruvbox-material"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = "eol",
        delay = 350,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = "    <author>, <author_time:%R> • <summary>",
    },
  },
  {
    "wakatime/vim-wakatime",
  },
}
