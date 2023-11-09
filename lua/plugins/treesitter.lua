return {
  'adam-r-kowalski/nvim-treesitter',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = { "lua", "yeti" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}
