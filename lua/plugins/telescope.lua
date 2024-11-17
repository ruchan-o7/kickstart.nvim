return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 
		{'nvim-lua/plenary.nvim'},
		{ 
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
		},
		{ 'nvim-telescope/telescope-ui-select.nvim' },
	},
	config = function()
		require('telescope').setup {
			pickers = { colorscheme = { enable_preview = true } },
			extensions = {
				['ui-select'] = { require('telescope.themes').get_dropdown(), },
			}
		}
		pcall(require('telescope').load_extension, 'fzf')
		pcall(require('telescope').load_extension, 'ui-select')

		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = 'Telescope live grep' })
		vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
	end

}
