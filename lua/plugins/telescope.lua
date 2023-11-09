return {
  'nvim-telescope/telescope.nvim', tag = '0.1.3',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    require('telescope').setup {
      extensions = {
        fzf = {
          fuzzy = true,
          override_generic_sorter = true,
          override_file_sorter = true,
          case_mode = "smart_case",
        }
      }
    }
    require('telescope').load_extension('fzf')
    require("which-key").register({
      f = { builtin.find_files, "Find File" },
      g = { builtin.live_grep, "Grep String" },
      b = { builtin.buffers, "Buffer List" }
    }, { prefix = "<leader>" })
  end,
}
