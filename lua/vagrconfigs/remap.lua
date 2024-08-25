vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<S-f>", "<cmd>:!black % --quiet --line-length=120<CR>")
vim.keymap.set("n", "<S-r>", ":%bd|e#<CR>")
