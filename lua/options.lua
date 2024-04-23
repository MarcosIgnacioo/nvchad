require "nvchad.options"

-- add yours here!

local o = vim.o

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
