local langs = { 'bash', 'c', 'cpp', 'css',
        'dart', 'vue', 'cmake', 'make', 'yaml',
        'csv', 'doxygen', 'json', 'glsl', 'hlsl',
        'html', 'lua', 'markdown', 'regex', 'markdown_inline',
        'vim', 'vimdoc',
}
return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		local configs = require('nvim-treesitter.configs')

		configs.setup(
		{
			ensure_installed = langs,
			auto_install =true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			disable = function(lang, bufnr)
				return api.nvim_buf_line_count(bufnr) > 5000
			end,
		}
		)
	end
}
