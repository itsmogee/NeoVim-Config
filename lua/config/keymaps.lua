-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

--select All
keymap.set("n", "<C-a>", "gg<S-v>G", opts)

--Tab commands
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return", opts)

--Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move Window
keymap.set("n", "sh", "<C-w>h", opts)
keymap.set("n", "sk", "<C-w>k", opts)
keymap.set("n", "si", "<C-w>i", opts)
keymap.set("n", "sj", "<C-w>j", opts)

keymap.set("n", "=", "<cmd>vertical resize +5<cr>")
keymap.set("n", "-", "<cmd>vertical resize -5<cr>")
keymap.set("n", "+", "<cmd>horizontal resize +5<cr>")
keymap.set("n", "_", "<cmd>horizontal resize -5<cr>")

-- Neotree shortcuts
keymap.set("n", "<C-n>", ":Neotree filesystem toggle right<CR>", opts)

--Neogen Docstrings
keymap.set("n", "<leader>nf", ":lua require('neogen').generate()<CR>", opts)

--Debugger
keymap.set("n", "<leader>dy", ":lua require('dapui').open({reset = true})<CR>", opts)
