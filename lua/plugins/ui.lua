local icons = require("lazyvim.config").icons
local Util = require("lazyvim.util")

return {
  -- Remove the notification below
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },
  -- Makes notifications look better
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 10000,
      top_down = false,
    },
  },
  -- The top right section with the filename and [+] if its modified
  {
    "b0o/incline.nvim",
    dependencies = { "craftzdog/solarized-osaka.nvim" },
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local colors = require("solarized-osaka.colors").setup()
      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal = { guibg = colors.magenta500, guifg = colors.base04 },
            InclineNormalNC = { guibg = colors.violet500, guifg = colors.base03 },
          },
        },
        window = { margin = { vertical = 0, horizontal = 1 } },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if vim.bo[props.buf].modified then
            filename = "[+]" .. filename
          end

          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return { { icon, guifg = color }, { " " }, { filename } }
        end,
      })
    end,
  },
  -- Buffer Line showing the tabs section at the top with icons
  {
    "akinsho/bufferline.nvim",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next Tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev Tab" },
    },
    opts = {
      options = {
        mode = "tabs",
        show_buffer_close_icons = false,
        separator_style = { " ", "" },
      },
    },
  },
  -- Lualine at the bottom
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        theme = "solarized_dark",
        section_separators = { left = "", right = "" },
        component_separators = { left = "", right = "" },
      },
      sections = {
        lualine_c = {
          Util.lualine.root_dir(),
          {
            "diagnostics",
            symbols = {
              error = icons.diagnostics.Error,
              warn = icons.diagnostics.Warn,
              info = icons.diagnostics.Info,
              hint = icons.diagnostics.Hint,
            },
          },
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { Util.lualine.pretty_path() },
          -- { "filename", path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" } },
          -- stylua: ignore
          -- {
          --   function() return require("nvim-navic").get_location() end,
          --   cond = function() return package.loaded["nvim-navic"] and require("nvim-navic").is_available() end,
          --   -- For other colorschemes that have a weird space at the end
          --   padding = { left =1, right = 0 },
          -- },
        },
        lualine_z = {},
      },
    },
  },
  -- Lualine for aerial
  -- {
  --   "nvim-lualine/lualine.nvim",
  --   opts = function(_, opts)
  --     table.insert(opts.sections.lualine_c, {
  --       "aerial",
  --       sep = " ", -- separator between symbols
  --       sep_icon = "", -- separator between icon and symbol
  --
  --       -- The number of symbols to render top-down. In order to render only 'N' last
  --       -- symbols, negative numbers may be supplied. For instance, 'depth = -1' can
  --       -- be used in order to render only current symbol.
  --       depth = 5,
  --
  --       -- When 'dense' mode is on, icons are not rendered near their symbols. Only
  --       -- a single icon that represents the kind of current symbol is rendered at
  --       -- the beginning of status line.
  --       dense = false,
  --
  --       -- The separator to be used to separate symbols in dense mode.
  --       dense_sep = ".",
  --
  --       -- Color the symbol icons.
  --       colored = true,
  --     })
  --   end,
  -- },
}
