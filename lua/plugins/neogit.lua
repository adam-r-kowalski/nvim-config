return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "sindrets/diffview.nvim",
    "ibhagwan/fzf-lua",
  },
  config = function()
    require("neogit").setup({})
    require("which-key").register({
      v = { "<cmd>Neogit<cr>", "neogit" }
    }, { prefix = "<leader>" })
  end
}
