return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      n = {
        ["<leader>td"] = { "<cmd>Copilot disable<cr>", desc = "Disable Copilot" },
        ["<leader>te"] = { "<cmd>Copilot enable<cr>", desc = "Enable Copilot" },
        ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
      },
    },
  },
}
