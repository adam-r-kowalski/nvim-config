return {
  'Vigemus/iron.nvim',
  config = function()
    local iron = require("iron.core")
    iron.setup({
      config = {
        repl_definition = {
          yeti = {
            command = {"yeti"}
          }
        },
        repl_open_cmd = 'vertical belowright split'
      },
      ignore_black_lines = true,
      keymaps = {
        send_motion = "s",
        visual_send = "s",
      }
    })
  end
}
