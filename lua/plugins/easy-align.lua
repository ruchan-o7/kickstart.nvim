return {
	'junegunn/vim-easy-align',
	config = function()
		vim.keymap.set('v', 'ga', ':EasyAlign<CR>', {})
		vim.keymap.set('n', 'ga', ':EasyAlign<CR>', {})
	end,
}
