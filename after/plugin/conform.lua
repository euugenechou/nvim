require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "isort" },
		rust = { "rustfmt" },
		c = { "clang_format" },
		["_"] = { "trim_whitespace" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_fallback = true,
	},
	notify_on_error = false,
})
