local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

-- Formatting via LSP is defaulted to <leader>fm with null-ls.
-- TODO: format on save
local sources = {
	formatting.prettier,
	formatting.stylua,
	formatting.gofmt,
	formatting.rustfmt,
	formatting.jsonnetfmt,
	formatting.black, --- Python

	lint.shellcheck,
}

null_ls.setup({
	sources = sources,
})
