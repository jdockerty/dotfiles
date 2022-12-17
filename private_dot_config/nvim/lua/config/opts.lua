-- Options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.hidden = true
vim.opt.wrap = false

-- Give more space for displaying messages.
vim.opt.cmdheight = 2

vim.opt.encoding = "utf-8"
vim.opt.updatetime = 100 

--Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess = c

vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.swapfile = false
vim.opt.incsearch = true -- incremental search
vim.opt.hlsearch = false -- don't highlight search results
vim.opt.clipboard = "unnamedplus"

-- Start scrolling 8 lines away from top/bottom
vim.opt.scrolloff = 8

vim.opt.signcolumn = "yes:1" -- extra column for linting, git, lsp etc.
vim.opt.colorcolumn = "80"

vim.opt.completeopt = "menu,menuone,noselect"

vim.opt.background = "dark"

-- Globals
vim.g.mapleader = " " -- Set leader key to space
vim.g.maplocalleader = " "
vim.g.terraform_fmt_on_save = true
vim.g.auto_save = true

-- Autosave only on leaving insert mode.
vim.g.auto_save_events = {"InsertLeave"}
