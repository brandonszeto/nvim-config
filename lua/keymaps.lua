local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("n", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Toggle Nvim Tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Better Indenting
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move selected line / block of text in visual mode
keymap("v", "J", ":move '>+1<CR>gv-gv", opts)
keymap("v", "K", ":move '<-2<CR>gv-gv", opts)

-- Cursor stays in place when joining lines
keymap("n", "J", "mzJ`z", opts)

-- Cursor stays in place using <C-d> and <C-u>
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Better searching (keep in the middle of screen)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Save register on paste
keymap("x", "<leader>p", '"_dP', opts)

-- Navigate buffers
keymap("n", "<leader>bn", ":bnext<CR>", opts)
keymap("n", "<leader>bp", ":bprevious<CR>", opts)

-- Don't skip paragraph when using j/k in wrapped lines
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
