-- Define leader
vim.g.mapleader = " "

-- When moving to end of file or between paragraphs, recenter line
vim.keymap.set("n", "G", "Gzz")

-- move selected text up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center C-u and C-d
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

--center search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

--paste over selection without losing clipboard
vim.keymap.set("x", "<leader>p", [["_dP]])

--paste from system clipboard
vim.keymap.set({"n","v"}, "<leader>P", [["+p]])

--copy from vim to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

--change buffer in current window
vim.keymap.set("n", "<leader>bn", "<cmd>bn<cr>")

--open Oil
vim.keymap.set("n", "<leader>-", "<cmd>Oil --float<cr>")
