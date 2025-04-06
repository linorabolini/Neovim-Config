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

-- NEOVIDE

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

-- Move text up/ down
keymap("n", "<A-S-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-S-k>", ":m .-2<CR>==", opts)

-- Center view after moving
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- Shorcut for searching and replacing (structure already written)
keymap("n", "<S-r>", ":%s/<C-r><C-w>//gc<Left><Left><Left>", opts)

keymap("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opts)
keymap("n", "<leader>f", "<cmd>Telescope git_files theme=dropdown<cr>", opts)
keymap("n", "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)
keymap("n", "<leader>r", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>c", "<cmd>Bdelete!<CR>", opts)

keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>ld", "<cmd>Telescope diagnostics bufnr=0<cr>", opts)
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", opts)
keymap("n", "<S-l>", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
keymap("n", "<S-h>", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
keymap("n", "<leader>lk", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)

keymap("n", "<leader>sc", "<cmd>Telescope colorscheme<cr>", opts)

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

-- Terminal --
-- Better terminal navigation
keymap("t", "<M-1>", "<cmd>1:ToggleTerm<cr>", opts)
keymap("t", "<M-2>", "<cmd>2:ToggleTerm<cr>", opts)
keymap("t", "<M-3>", "<cmd>3:ToggleTerm<cr>", opts)
keymap("t", "<M-4>", "<cmd>4:ToggleTerm<cr>", opts)
