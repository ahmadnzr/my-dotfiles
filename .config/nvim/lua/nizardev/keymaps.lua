vim.g.mapleader = " "

local map = vim.keymap.set

-- general keymaps
map("i", "jk", "<ESC>")

map("n", "<leader>nh", ":nohl<CR>")

map("n", "<C-a>", "gg<S-v>G")

map("n", "x", '"_x')

map("n", "+", "<C-a>")
map("n", "-", "<C-x>")

map("n", "ss", "<C-w>v") -- split window vertically
map("n", "sh", "<C-w>s") -- split window horizontally
map("n", "se", "<C-w>=") -- make split windows equal width
map("n", "sq", ":close<CR>") -- close current window

map("n", "to", ":tabnew<CR>") -- open new tab
map("n", "tq", ":tabclose<CR>") -- close current tab
map("n", "tn", ":tabn<CR>") -- go to next tab
map("n", "tp", ":tabp<CR>") -- go to previous tab

map("n", "<leader>tn", ":tabnew +term<CR>") -- open terminal in new tab
map("n", "<leader>ts", ":vsplit +term<CR>") -- open terminal in vertical split
map("n", "<leader>th", ":split +term<CR>") -- open terminal in horizontal split

map("n", "mj", ":m .+1<CR>") -- move current line down one row
map("n", "mk", ":m .-2<CR>") -- move current line up one row

map("n", "fa", "zfa") -- fold arround (follow it surround) ex. fat (fold arround tag)
map("n", "fi", "zfi") -- fold inner (follow it surround) ex. fit (fold inner tag)
