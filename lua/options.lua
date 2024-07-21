require "nvchad.options"

-- add yours here!

local o = vim.o
-- vim.opt.guicursor = "n-v-c-sm-i-ci-ve:block,r-cr-o:hor20,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor"
o.wrap = true
o.autoindent = true
o.smartindent = true
o.indentexpr = "autoindent"
o.relativenumber = true
o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
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

-- vim.api.nvim_create_autocmd("Buf", {
--  buffer = vim.api.nvim_get_current_buf(),
--  command = "GoImports"
-- })

vim.o.laststatus = 3
require('nvim-tree').setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

local builtin = require('telescope.builtin')
local config = require('telescope.config')

-- Return a list of files found in quickfix, skipping duplicates
local quickfix_files = function()
  local qflist = vim.fn.getqflist()
  local files = {}
  local seen = {}
  for k in pairs(qflist) do
    local path = vim.fn.bufname(qflist[k]["bufnr"])
    if not seen[path] then
      files[#files + 1] = path
      seen[path] = true
    end
  end
  table.sort(files)
  return files
end
