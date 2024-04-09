return {
  {
    "stevearc/aerial.nvim",
    opts = function(_, opts)
      opts.layout = {
        filter_kind = false,
        max_width = { 40, 0.5 },
        min_width = 35,
      }
    end,
    keys = {
      { "<leader>a", "<cmd>AerialNavToggle<cr>", desc = "Aerial (Nav)" },
    },
  },
}
