return {
	'echasnovski/mini.nvim',
	config = function()
		require('mini.ai').setup { n_lines = 500 }
		require('mini.surround').setup()
		require('mini.statusline').setup()
		require('mini.move').setup()
		require('mini.pairs').setup()
	end,
}