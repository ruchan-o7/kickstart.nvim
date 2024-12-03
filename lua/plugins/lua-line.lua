return {
  'nvim-lualine/lualine.nvim',
  lazy = true,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = { theme = 'gruvbox-material' },
    }
  end,
}
