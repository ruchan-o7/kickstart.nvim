return {
	'p00f/clangd_extensions.nvim',
	lazy = true,
	config = function()
		require('clangd_extensions').setup({
			inlay_hints = {
				inline = vim.fn.has("nvim-0.10") == 1,
				only_current_line = false,
				-- Event which triggers a refresh of the inlay hints.
				-- You can make this { "CursorMoved" } or { "CursorMoved,CursorMovedI" } but
				-- note that this may cause higher CPU usage.
				-- This option is only respected when only_current_line is true.
				only_current_line_autocmd = { "CursorHold" },
				show_parameter_hints = true,
				parameter_hints_prefix = "<- ",
				other_hints_prefix = "=> ",
				max_len_align = false,
				max_len_align_padding = 1,
				right_align = false,
				right_align_padding = 7,
				highlight = "Comment",
				priority = 100,
			},
			ast = {
				role_icons = {
					type = "",
					declaration = "",
					expression = "",
					specifier = "",
					statement = "",
					["template argument"] = "",
				},

				kind_icons = {
					Compound = "",
					Recovery = "",
					TranslationUnit = "",
					PackExpansion = "",
					TemplateTypeParm = "",
					TemplateTemplateParm = "",
					TemplateParamObject = "",
				},

				highlights = {
					detail = "Comment",
				},
			},
			memory_usage = {
				border = "none",
			},
			symbol_info = {
				border = "none",
			},
		})
	end,
}
