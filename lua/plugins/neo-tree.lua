return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set('n', '<leader>n', ':Neotree toggle<CR>', { desc = 'Open Neotree on left' })
		require "neo-tree".setup({
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			open_files_do_not_replace_types = { "terminal", "trouble", "qf" }, -- when opening files, do not use windows containing these filetypes or buftypes
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				}
			}
		})
	end
}
