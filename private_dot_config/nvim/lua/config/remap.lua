-- Personal key mappings
local nnoremap = require("config.keymap").nnoremap
local vnoremap = require("config.keymap").vnoremap
local nmap = require("config.keymap").nmap

nnoremap("<leader>pv", "<cmd>Ex<cr>")

nnoremap("<leader>ps", ":lua require('telescope.builtin').grep_string({ search = vim.fn.input('Search for: ')})<CR>")

-- Telescope mappings
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")

nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- Short for filename
nnoremap("<leader>fn", vim.api.nvim_buf_get_name(0))

-- Reload file easily, useful when using git and files are changing
nnoremap("<leader>r", ":checktime<cr>")

-- Language Server Info, press 'i' to install in the shown list.
nnoremap("<leader>li", ":LspInstallInfo<CR>")

-- Save/Source current file, used when editing init.vim
nnoremap("<silent><leader>so", ":w <CR> :source %<CR>")

-- Clear buffers, except the current one. The pipe must be escaped using '\'.
nnoremap("<silent><leader>bd", ":%bd\\|e#<CR>")

nnoremap("<leader>y", '"+y')
vnoremap("<leader>y", '"+y')
nmap("<leader>Y", '"+Y')

nnoremap("<leader>d", '"_d')
vnoremap("<leader>d", '"_d')


nnoremap("<leader>ss", ":write <CR>")

nnoremap("<S-k>", "<cmd>lua vim.lsp.buf.hover()<CR>")
