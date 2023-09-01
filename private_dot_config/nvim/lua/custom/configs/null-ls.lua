local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

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
