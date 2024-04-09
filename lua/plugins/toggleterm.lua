local Util = require("lazyvim.util")

return {
  {
    -- "Repo"
    "akinsho/toggleterm.nvim",
    lazy = true,
    cmd = { "ToggleTerm" },
    keys = {
      {
        "<c-i>",
        function()
          local count = vim.v.count1
          require("toggleterm").toggle(count, 0, Util.root.get(), "float")
        end,
        desc = "ToggleTerm (float root_dir)",
      },
      {
        "<leader>tn",
        "<cmd>ToggleTermSetName<cr>",
        desc = "Set term name",
      },
    },
    opts = {
      open_mapping = [[<c-\>]],
      hide_numbers = false, -- hide the number column in toggleterm buffers
      shade_filetypes = {},
      shade_terminals = true,
      start_in_insert = true,
      insert_mappings = true, -- whether or not the open mapping applies in insert mode
      terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
      persist_size = true,
      direction = "horizontal" or "vertical" or "window" or "float",
      close_on_exit = true, -- close the terminal window when the process exits
    },
  },
}
