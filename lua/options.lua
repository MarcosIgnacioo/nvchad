require "nvchad.options"

-- add yours here!

local o = vim.o

o.wrap = true
o.autoindent = true
o.smartindent = true
o.indentexpr = "autoindent"
o.relativenumber = true
o.tabstop = 1
o.shiftwidth = 1
o.softtabstop = 1
o.incsearch = false
o.breakindent = true
o.cursorlineopt = 'both' -- to enable cursorline!

local cmp = require("cmp")
cmp.setup({
 mapping = {
  ["<Tab>"] = cmp.mapping(function(fallback)
   if cmp.visible() then
    local entry = cmp.get_selected_entry()
    if not entry then
     cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
    end
    cmp.confirm()
   else
    fallback()
   end
  end, { "i", "s", "c", }),
  ['<C-j>'] = cmp.mapping.select_next_item(),
  ['<C-k>'] = cmp.mapping.select_prev_item(),
 }
})

vim.api.nvim_create_autocmd("BufWritePre", {
 group = vim.api.nvim_create_augroup("TS_add_missing_imports", { clear = true }),
 desc = "TS_add_missing_imports",
 pattern = { "*.ts", "*.tsx", ".js", ".jsx" },
 callback = function()
  vim.lsp.buf.code_action({
   apply = true,
   context = {
    only = { "source.addMissingImports.ts" },
   },
  })
  vim.cmd("write")
 end,
})

vim.o.laststatus = 3
