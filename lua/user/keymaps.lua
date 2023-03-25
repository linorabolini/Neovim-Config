local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
keymap("t", "<S-Space>", " ", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Terminal management
keymap("n", "<M-1>", "<cmd>1:ToggleTerm<cr>", opts)
keymap("n", "<M-2>", "<cmd>2:ToggleTerm<cr>", opts)
keymap("n", "<M-3>", "<cmd>3:ToggleTerm<cr>", opts)
keymap("n", "<M-4>", "<cmd>4:ToggleTerm<cr>", opts)

-- Resize with arrows
keymap("n", "<A-C-j>", ":resize +1<CR>", opts)
keymap("n", "<A-C-k>", ":resize -1<CR>", opts)
keymap("n", "<A-C-h>", ":vertical resize +1<CR>", opts)
keymap("n", "<A-C-l>", ":vertical resize -1<CR>", opts)

-- Move text up/ down 
keymap("n", "<A-S-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-S-k>", ":m .-2<CR>==", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Shorcut for searching and replacing (structure already written)
keymap("n", "<C-S-r>", ":%s/<C-r><C-w>//gc<Left><Left><Left>", opts)

-- HOP --
keymap("n", "<S-f>", ":HopPattern<cr>", opts)
keymap("n", "<C-F>", ":HopWord<cr>", opts)

-- Insert --
-- Press jk fast to enter 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "Jk", "<ESC>", opts)
keymap("i", "jK", "<ESC>", opts)
keymap("i", "JK", "<ESC>", opts)

-- Move text up/ down 
keymap("i", "<A-S-j>", "<ESC>:m .+1<CR>==gi", opts)
keymap("i", "<A-S-k>", "<ESC>:m .-2<CR>==gi", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-S-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
keymap("v", "<leader>d", '<cmd>HopWord<cr>', opts)
keymap("v", "<S-f>", '<cmd>HopPattern<cr>', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-S-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<M-1>", "<cmd>1:ToggleTerm<cr>", opts)
keymap("t", "<M-2>", "<cmd>2:ToggleTerm<cr>", opts)
keymap("t", "<M-3>", "<cmd>3:ToggleTerm<cr>", opts)
keymap("t", "<M-4>", "<cmd>4:ToggleTerm<cr>", opts)
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

