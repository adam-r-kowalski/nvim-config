return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = function()
    local npairs = require("nvim-autopairs")
    npairs.setup({})
    npairs.get_rules("'")[1].not_filetypes = { "yeti" }
  end
}
