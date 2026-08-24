return {
  {
    "rafamadriz/friendly-snippets",
    enabled = false,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          mason = false, -- This safely prevents Mason from managing or installing clangd
        },
      },
    },
  },
}
