return {
  -- Configure LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "default", -- <- change this to default
    },
  },

  -- Disable any other theme plugins if present
  { "ellisonleao/gruvbox.nvim", enabled = false },
  { "folke/tokyonight.nvim", enabled = false },
}
