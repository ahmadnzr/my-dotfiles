vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "x", '"_x')

keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

keymap.set("n", "ss", "<C-w>v") -- split window vertically
keymap.set("n", "sh", "<C-w>s") -- split window horizontally
keymap.set("n", "se", "<C-w>=") -- make split windows equal width
keymap.set("n", "sq", ":close<CR>") -- close current window

keymap.set("n", "to", ":tabnew<CR>") -- open new tab
keymap.set("n", "tq", ":tabclose<CR>") -- close current tab
keymap.set("n", "tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "tp", ":tabp<CR>") -- go to previous tab

keymap.set("n", "<leader>tn", ":tabnew +term<CR>") -- open terminal in new tab
keymap.set("n", "<leader>ts", ":vsplit +term<CR>") -- open terminal in vertical split
keymap.set("n", "<leader>th", ":split +term<CR>") -- open terminal in horizontal split
