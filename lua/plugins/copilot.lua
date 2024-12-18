return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<M-l>",
            accept_word = "<M-d>",
            accept_line = "<M-e>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<M-c>",
          },
        },
      }
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = "copilot.lua",
    config = function() require("copilot_cmp").setup() end,
  },
}
-- <M-l> (Tab): Accept full suggestion
-- <M-]>: Next suggestion
-- <M-d>: Accept word
-- <M-e>: Accept line
-- <M-[>: Previous suggestion
-- <M-c>: Dismiss suggestion
