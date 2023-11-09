return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    vim.opt.termguicolors = true

    require("nvim-web-devicons").setup({
      override = {
        yeti = {
          icon = "⛰",
          color = "#3A66A7",
          name = "yeti"
        }
      }
    })

    require("nvim-tree").setup({
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
      view = {
        side = "right",
      }
    })

    require("which-key").register({
      e = { "<cmd>NvimTreeFindFileToggle()<cr>", "explorer" }
    }, { prefix = "<leader>" })
  end,
}
