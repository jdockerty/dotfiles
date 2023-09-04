local M = {}

M.general = {

	n = {
		["<leader>pv"] = { "<cmd>Ex<cr>", "File explorer with netrw" },
		["<leader>fn"] = { vim.api.nvim_buf_get_name(0), "Get the current filename" },
		["<leader>r"] = { ":checktime<cr>", "Reload file in current buffer" },
		["<leader>bd"] = { ":%bd\\|e#<cr>", "Clear buffers except current" },
		["<leader>y"] = { '"+y', "Read into main registry" },
		["<leader>d"] = { '"_d' },
		["<leader>ss"] = { ":write <cr>", "Write current file" },
		["<leader>goi"] = { ":GoImports <cr>", "Run goimports" },
		["<leader>gof"] = { ":GoFmt <cr>", "Run go fmt" },

		["<leader>tw"] = { ":StripTrailingWhitespace <cr>" },

		["<leader>toc"] = { ":InsertToc <cr>", "Insert table of contents" },

		["<leader>li"] = { ":LspInfo<cr>" },
		["<leader>lr"] = { ":LspRestart<cr>" },

		["<leader>u"] = { ":UndotreeToggle<cr>", "Toggle undotree in the current buffer" },
	},

	v = {
		["<leader>y"] = { '"+y', "Read into main registry" },
		["<leader>d"] = { '"_d' },
	},

	i = {
		["jj"] = { "<Esc>", "Leave insert mode" },
	},
}

return M
