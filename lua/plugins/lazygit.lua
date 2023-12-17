return {
	{
		"kdheepak/lazygit.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("which-key").register({
				v = { "<cmd>LazyGit<cr>", "LazyGit" },
			}, { prefix = "<leader>" })
		end,
	},
}
