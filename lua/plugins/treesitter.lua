-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "astro",
      "go",
      "php",
      "javascript",
      "typescript",
      "python",
      "bash",
      "vue",
      "markdown",
      "json",
      "json5",
      "yaml",
      "html",
      "css",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
