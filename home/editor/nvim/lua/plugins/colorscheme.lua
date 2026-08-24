return {
  -- add gruvbox
  { "catppuccin/nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
  {
    "catppuccin/nvim",
    opts = {
      float = {
        transparent = true,
      },
      -- transparent_background = true,
      flavour = "mocha",
      term_colors = "true",
      auto_integrations = "true",
      color_overrides = {
        mocha = {
          base = "#000000",
        },
      },
    },
  },
  {
    "wtfox/luna.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    opts = {
      transparent_mode = true,
    },
  },
}
