return {

  -- add more treesitter parsers, used for e.g. theming and other plugins
  -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
  {
    "nvim-treesitter/nvim-treesitter",
    auto_install = true,
    -- opts will be merged with the parent spec
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "comment",
        "css",
        "diff",
        "git_config",
        "git_rebase",
        "go",
        "gomod",
        "html",
        "http",
        "java",
        "javascript",
        "json",
        "lua",
        "make",
        "markdown",
        "markdown_inline",
        "proto",
        "python",
        "query",
        "regex",
        "rst",
        "rust",
        "sql",
        "terraform",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- https://github.com/nvim-treesitter/nvim-treesitter-context
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
