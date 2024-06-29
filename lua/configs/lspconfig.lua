-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "intelephense", "tsserver", "htmx", "gopls", "pyright", "eslint", "rust_analyzer",
 "zls", "clangd", "asm_lsp", "marksman" }

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

local function organize_imports_golang(client, bufnr)
 local params = vim.lsp.util.make_range_params(nil, vim.lsp.util._get_offset_encoding())
 params.context = { only = { "source.organizeImports" } }
 local resp = client.request_sync("textDocument/codeAction", params, 3000, bufnr)
 for _, r in pairs(resp and resp.result or {}) do
  if r.edit then
   vim.lsp.util.apply_workspace_edit(r.edit, vim.lsp.util._get_offset_encoding())
  else
   vim.lsp.buf.execute_command(r.command)
  end
 end
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

lspconfig.gopls.setup {
 on_attach = on_attach,
 on_init = on_init,
 capabilities = capabilities,
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


-- lspconfig.gopls.setup({
--  on_attach = {function(client, bufnr)
--   vim.api.nvim_create_autocmd("BufWritePre", {
--    buffer = bufnr,
--    callback = function()
--     golang_organize_imports(client, bufnr)
--     vim.lsp.buf.format({ async = false })
--    end,
--   })
--  end,on_attach},
--  on_init = on_init,
--  capabilities = capabilities,
-- })


lspconfig.rust_analyzer.setup {
 on_attach = on_attach,
 on_init = on_init,
 capabilities = capabilities,
}

lspconfig.asm_lsp.setup {
 on_attach = on_attach,
 on_init = on_init,
 capabilities = capabilities,
 root_dir = lspconfig.util.root_pattern('./')
}
