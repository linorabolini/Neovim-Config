require "user.options"
require "user.keymaps"
require "user.plugins"
require "user.colorscheme"
require "user.cmp"
require "user.lsp"
require "user.telescope"
require "user.treesitter"
require "user.comment"
require "user.nvim-tree"
require "user.lualine"
require "user.toggleterm"
require "user.indentline"
require "user.autocommands"


-- Define highlight groups with background color and bold font
vim.api.nvim_set_hl(0, "TodoHighlight", { bg = "#FDFD96", fg = "#000000", bold = true }) -- Yellow background
vim.api.nvim_set_hl(0, "NoteHighlight", { bg = "#C3B1E1", fg = "#000000", bold = true }) -- Green background

-- Match TODO and FIX patterns
vim.fn.matchadd("TodoHighlight", " TODO:")
vim.fn.matchadd("NoteHighlight", " NOTE:")
