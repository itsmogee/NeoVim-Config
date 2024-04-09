-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- Increment / Decrement
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment a number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement a number" })

--select All
keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select All" })

--Tab commands
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tx", ":tabclose<Return>", opts)

--Split windows
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move Window
-- keymap.set("n", "sh", "<C-w>h", {desc="Move window left"})
-- keymap.set("n", "sk", "<C-w>k", {desc="Move window left"})
-- keymap.set("n", "si", "<C-w>i", {desc="Move window left"})
-- keymap.set("n", "sj", "<C-w>j", {desc="Move window left"})

-- Window management
keymap.set("n", "=", "<cmd>vertical resize +7<cr>", { desc = "Increase window height" })
keymap.set("n", "-", "<cmd>vertical resize -3<cr>", { desc = "Decrease window height" })
keymap.set("n", "+", "<cmd>horizontal resize +7<cr>", { desc = "Increade window width" })
keymap.set("n", "_", "<cmd>horizontal resize -3<cr>", { desc = "Decrease window width" })
keymap.set("n", "s=", "<C-w>=", { desc = "Make splits equal size" })

-- Neotree shortcuts
keymap.set("n", "<C-n>", ":Neotree filesystem toggle right<CR>", opts)

--Neogen Docstrings
keymap.set("n", "<leader>nf", ":lua require('neogen').generate()<CR>", opts)

--Debugger
keymap.set("n", "<leader>dy", ":lua require('dapui').open({reset = true})<CR>", opts)
