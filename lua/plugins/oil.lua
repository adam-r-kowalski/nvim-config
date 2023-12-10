return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({})
		require("which-key").register({
			["-"] = { require("oil").open, "file explorer" },
		})
		if #vim.fn.argv() == 0 then
			vim.defer_fn(function()
				require("oil").open()
			end, 1)
		end
	end,
}
