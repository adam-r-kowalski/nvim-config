return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "storm",
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
      },
    })
    vim.cmd.colorscheme "tokyonight"
  end
}
