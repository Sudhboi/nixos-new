return {
  {
    "saghen/blink.cmp",
    opts = {
      enabled = function()
        return vim.tbl_contains(
          { "tex", "java", "c", "cpp", "lean", "lua", "typst", "nix", "python", "haskell" },
          vim.bo.filetype
        )
      end,
    },
  },
}
