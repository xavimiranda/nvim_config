vim.g.mapleader = " "
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Clipboard interactions
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')
vim.keymap.set('v', '<leader>y', '"+y')

-- primagen keybindings
-- move lines in VISUAL LINE mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep cursor when <C-j> the bottom line to current line
vim.keymap.set("n", "J", "mzJ`z")

-- keep cursor in the center when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- keep cursor in the middle when searching terms
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "n", "nzzzv")

-- VISUAL MODE  replaces selection with normal registry content
vim.keymap.set("x", "<M-p>", '"_dP')

-- deletions to the void (doesn't pollute the registry)
vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<M-s>", [[:s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
vim.keymap.set("n", "<M-S>", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]])
