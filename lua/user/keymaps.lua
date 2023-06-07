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

keymap("n", "<S-Space>", '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)

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

-- Live Grep
keymap("n", "<D-f>", ":Telescope live_grep <CR>", opts)

-- Better Delete
keymap("n", "D-d", '"_d', opts)

-- Center view after moving
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Shorcut for searching and replacing (structure already written)
keymap("n", "<S-r>", ":%s/<C-r><C-w>//gc<Left><Left><Left>", opts)

-- Insert --
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

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-S-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<M-1>", "<cmd>1:ToggleTerm<cr>a", opts)
keymap("t", "<M-2>", "<cmd>2:ToggleTerm<cr>a", opts)
keymap("t", "<M-3>", "<cmd>3:ToggleTerm<cr>a", opts)
keymap("t", "<M-4>", "<cmd>4:ToggleTerm<cr>a", opts)
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

