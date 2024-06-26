local null_ls = require("null-ls")
local formatters = require "lvim.lsp.null-ls.formatters"
null_ls.setup({
 sources = {
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.diagnostics.eslint,
  null_ls.builtins.completion.spell,
  null_ls.builtins.formatting.black,
  null_ls.builtins.formatting.lua_format,
 },
})
formatters.setup {
 {
  command = "prettier",
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json" },
 },
 {
  command = "black",
  filetypes = { "python" }
 },
}
