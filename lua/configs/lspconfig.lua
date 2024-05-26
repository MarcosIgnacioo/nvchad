-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "intelephense", "tsserver", "htmx", "gopls", "pyright", "eslint", "rust_analyzer",
 "zls", "clangd" }

-- lsps with default config
for _, lsp in ipairs(servers) do
 lspconfig[lsp].setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
 }
end

local function organize_imports()
 local params = {
  command = "_typescript.organizeImports",
  arguments = { vim.api.nvim_buf_get_name(0) },
  title = ""
 }
 vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup {
 on_attach = on_attach,
 capabilities = capabilities,
 commands = {
  OrganizeImports = {
   organize_imports,
   description = "Organize Imports"
  }
 }
}

-- typescript
lspconfig.htmx.setup {
 on_attach = on_attach,
 on_init = on_init,
 capabilities = capabilities,
 servers = {
  ['htmx'] = { 'typescriptreact' }
 }
}

lspconfig.intelephense.setup {
 on_attach = on_attach,
 on_init = on_init,
 capabilities = capabilities,
}

lspconfig.gopls.setup {
 on_attach = on_attach,
 on_init = on_init,
 capabilities = capabilities,
}

lspconfig.rust_analyzer.setup {
 on_attach = on_attach,
 on_init = on_init,
 capabilities = capabilities,
}
