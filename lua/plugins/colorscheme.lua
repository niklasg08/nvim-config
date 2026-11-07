return {
  -- add dracula
  { 
    "Mofiqul/dracula.nvim", 
    priority = 1000, 
    config = function() 
      vim.cmd.colorscheme("dracula")
    end,
  },
  -- add devicons
  {
    "nvim-tree/nvim-web-devicons"
  },
}
