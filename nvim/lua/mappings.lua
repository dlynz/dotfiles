require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.opt.colorcolumn = "80"
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<C-d>", "<C-D> zz")
map("n", "<C-u>", "<C-u> zz")
map("n", "<leader>ti", "<cmd> TimerlyToggle <cr>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
