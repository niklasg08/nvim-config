require('os')

return {
  {
    'nvim-telescope/telescope.nvim', 
    version = '*',
    dependencies = {
	'nvim-lua/plenary.nvim',
	-- optional but recommended
	{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function()
      vim.keymap.set('n', '<space>ff', require('telescope.builtin').find_files)
      vim.keymap.set('n', '<space>fb', function()
	require('telescope.builtin').find_files {
	  cwd = os.getenv('HOME')..'/testAutomation'
          }
	end)
      vim.keymap.set('n', '<space>fn', function()
	require('telescope.builtin').find_files {
	  cwd = os.getenv('HOME')..'/.config/nvim/'
          }
	end)
    end
  }
}
