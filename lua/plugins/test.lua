return {
	"vim-test/vim-test",
	config = function()
		vim.cmd([[
      let test#rust#cargotest#test_options = {'nearest': ['--', '--nocapture'],}
    ]])
		require("which-key").register({
			t = {
				name = "test",
				n = { "<cmd>TestNearest<cr>", "nearest" },
				l = { "<cmd>TestLast<cr>", "last" },
				f = { "<cmd>TestFile<cr>", "file" },
				v = { "<cmd>TestVisit<cr>", "visit" },
				s = { "<cmd>TestSuite<cr>", "suite" },
			},
		}, { prefix = "<leader>" })
	end,
}
