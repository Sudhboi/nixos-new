local ht = require("haskell-tools")
local bufnr = vim.api.nvim_get_current_buf()
local function opts(descr)
  return { noremap = true, silent = true, buffer = bufnr, desc = descr }
end
-- haskell-language-server relies heavily on codeLenses,
-- so auto-refresh (see advanced configuration) is enabled by default
-- vim.keymap.set("n", "<space>cl", vim.lsp.codelens.run, opts)
-- Hoogle search for the type signature of the definition under the cursor
-- vim.keymap.set("n", "<space>hs", ht.hoogle.hoogle_signature, opts)
-- Evaluate all code snippets
-- vim.keymap.set("n", "<space>ea", ht.lsp.buf_eval_all, opts)
-- Toggle a GHCi repl for the current package
-- vim.keymap.set("n", "<leader>rr", ht.repl.toggle, opts)
-- Toggle a GHCi repl for the current buffer
-- vim.keymap.set("n", "<leader>rf", function()
-- ht.repl.toggle(vim.api.nvim_buf_get_name(0))
-- end, opts)
vim.keymap.set("n", "<localleader>q", ht.repl.quit, opts("Quit Repl"))

vim.keymap.set("n", "<localleader>\\", function()
  vim.cmd.Haskell({ "hover" })
end, { desc = "Open Hover" })

vim.keymap.set("n", "<localleader>l", function()
  ht.repl.load_file(vim.api.nvim_buf_get_name(0))
end, opts("Load Current File"))

vim.keymap.set("n", "<localleader>L", function()
  ht.repl.reload()
end, opts("Reloads REPL"))

vim.keymap.set("n", "<localleader>t", function()
  ht.repl.cword_type()
end, opts("Check Type"))
