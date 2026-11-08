local telescope = require "telescope"
local telescope_builtin = require "telescope.builtin"

return {
  {
    "nvim-telescope/telescope.nvim", 
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      -- setup keymaps
      vim.keymap.set("n", "<space>f", telescope_builtin.find_files)
      vim.keymap.set("n", "<space>l", telescope_builtin.live_grep)
      vim.keymap.set("n", "<space>w", telescope_builtin.grep_string)
      vim.keymap.set("n", "<space>b", telescope_builtin.buffers)

      -- setup default config
      telescope.setup{
        defaults = {
          layout_config = { preview_width = 0.5 }
        },
        pickers = {
          find_files = {
            find_command = { "rg", "--files", "--hidden", "--glob", "!.git" },
          },
        },
      }
    end
  }
}
