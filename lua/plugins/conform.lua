return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			javascript = { "prettier" },
			html = { "prettier" },
			htmldjango = { "prettier" },
			css = { "prettier" },
			json = { "prettier" },
			cpp = { "clang-format" },
		},
		format_on_save = {
			timeout_ms = 1000,
			lsp_fallback = true,
		},
	},
}
