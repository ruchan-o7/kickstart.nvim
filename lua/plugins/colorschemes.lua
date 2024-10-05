local colorschemes = {

  {
    'catppuccin/nvim',
    name = 'catppuccin',
     lazy = true,
     priority = 1000,
  },
  {
    'navarasu/onedark.nvim',
  },
  {     'folke/tokyonight.nvim',
    lazy = true,
    priority = 1000,
    config = function()
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
return colorschemes
