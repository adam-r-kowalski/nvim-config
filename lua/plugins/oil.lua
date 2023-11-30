return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({})
		require("which-key").register({
			["-"] = { require("oil").open, "file explorer" },
		})
	end,
}
