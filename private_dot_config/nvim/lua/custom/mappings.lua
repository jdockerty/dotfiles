local M = {}

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

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

		["<leader>a"] = { mark.add_file, "Harpoon add file" },
		["<leader>t"] = { ui.toggle_quick_menu, "Harpoon menu toggle" },

		["<leader>ay"] = {
			function()
				ui.nav_file(1)
			end,
			"Harpoon quick toggle",
		},
		["<leader>au"] = {
			function()
				ui.nav_file(2)
			end,
			"Harpoon quick toggle",
		},
		["<leader>ai"] = {
			function()
				ui.nav_file(3)
			end,
			"Harpoon quick toggle",
		},
		["<leader>ao"] = {
			function()
				ui.nav_file(4)
			end,
			"Harpoon quick toggle",
		},
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
