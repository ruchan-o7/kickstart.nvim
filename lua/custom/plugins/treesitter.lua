return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'bash',
        'c',
        'cpp',
        'css',
        'dart',
        'vue',
        'cmake',
        'make',
        'yaml',
        'csv',
        'doxygen',
        'json',
        'glsl',
        'html',
        'lua',
        'markdown',
        'regex',
        'markdown_inline',
        'vim',
        'vimdoc',
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
