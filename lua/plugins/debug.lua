return {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"jay-babu/mason-nvim-dap.nvim",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		require("mason-nvim-dap").setup({
			ensure_installed = { "python", "codelldb", "cppdbg" },
		})
		require("nvim-dap-virtual-text").setup()
	end,
}
