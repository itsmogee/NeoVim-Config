-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.g.terminal_color_0 = "#012026"
-- vim.g.terminal_color_1 = "#b12f2c"
-- vim.g.terminal_color_2 = "#00a940"
-- vim.g.terminal_color_3 = "#5d8aa9"
-- vim.g.terminal_color_4 = "#449985"
-- vim.g.terminal_color_5 = "#00599c"
-- vim.g.terminal_color_6 = "#5c7e19"
-- vim.g.terminal_color_7 = "#405554"
-- vim.g.terminal_color_8 = "#374350"
-- vim.g.terminal_color_9 = "#ff4242"
-- vim.g.terminal_color_10 = "#2aea5e"
-- vim.g.terminal_color_11 = "#8dd3fd"
-- vim.g.terminal_color_12 = "#61d4b9"
-- vim.g.terminal_color_13 = "#1298ff"
-- vim.g.terminal_color_14 = "#98cf28"
-- vim.g.terminal_color_15 = "#58fad6"
local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.autoindent = true

-- search and replace settings
opt.ignorecase = true
opt.smartcase = true

-- appearance
opt.termguicolors = true
opt.cursorline = true

-- Remove squiggly lines
opt.fillchars:append({ eob = " " })
