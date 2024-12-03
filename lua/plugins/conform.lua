-- return {}
return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      format_on_save = { lsp_format = 'fallback' },
      lua = { 'stylua' },
      cpp = { 'clang-format', 'clangd' },
    }
  end,
}
