---@type ChadrcConfig
local M = {}
M.ui = { theme = "onedark" }
M.mappings = require("custom.mappings")
M.plugins = "custom.plugins"

-- Enable netrw, by default this is disabled with NvChad.
-- See https://github.com/NvChad/NvChad/issues/1949
M.lazy_nvim = {
	performance = {
		rtp = {
			disabled_plugins = vim.tbl_filter(function(name)
				return string.sub(name, 1, 5) ~= "netrw"
			end, require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins),
		},
	},
}

return M
