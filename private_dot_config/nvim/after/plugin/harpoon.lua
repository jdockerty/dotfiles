local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<silent><leader>a", mark.add_file)
vim.keymap.set("n", "<silent><leader>t", ui.toggle_quick_menu)

vim.keymap.set("n", "<silent><leader>ay", function() ui.nav_file(1))
vim.keymap.set("n", "<silent><leader>au", function() ui.nav_file(2))
vim.keymap.set("n", "<silent><leader>ai", function() ui.nav_file(3))
vim.keymap.set("n", "<silent><leader>ao", function() ui.nav_file(4))

