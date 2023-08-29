-- Personal key mappings
local nnoremap = require("config.keymap").nnoremap
local vnoremap = require("config.keymap").vnoremap
local nmap = require("config.keymap").nmap

vim.keymap.set("n", "<leader>pv", "<cmd>Ex<cr>")

vim.keymap.set(
	"n",
	"<leader>ps",
	":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Search for: ')})<CR>"
)

-- Telescope mappings
vim.keymap.set("n", "<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")

vim.keymap.set("n", "<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
vim.keymap.set("n", "<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
vim.keymap.set("n", "<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- Short for filename
vim.keymap.set("n", "<leader>fn", vim.api.nvim_buf_get_name(0))

-- Reload file easily, useful when using git and files are changing
vim.keymap.set("n", "<leader>r", ":checktime<cr>")

-- Language Server shortcuts
vim.keymap.set("n", "<leader>li", ":LspInfo<CR>")
vim.keymap.set("n", "<leader>lr", ":LspRestart <CR>")

-- Save/Source current file, used when editing init.vim
vim.keymap.set("n", "<leader>so", ":w <CR> :source %<CR>")

-- Clear buffers, except the current one. The pipe must be escaped using '\'.
vim.keymap.set("n", "<leader>bd", ":%bd\\|e#<CR>")

vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y"')

vim.keymap.set("n", "<leader>d", '"_d')
vim.keymap.set("v", "<leader>d", '"_d')

vim.keymap.set("n", "<leader>ss", ":write <CR>")

vim.keymap.set("n", "<leader>goi", ":GoImports <CR>")
vim.keymap.set("n", "<leader>gof", ":GoFmt <CR>")

-- Strip all trailing whitespace from current file
vim.keymap.set("n", "<leader>tw", ":StripTrailingWhitespace <CR>")

-- Double tap 'j' in order to leave insert mode.
-- This binding is for the Kinesis Advantage 2 keyboard layout
vim.keymap.set("i", "jj", "<Esc>")

-- Insert table of contents at the current cursor position.
vim.keymap.set("n", "<leader>toc", ":InsertToc <CR>")
