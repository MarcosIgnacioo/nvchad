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
    end, {"i","s","c",}),
  }
})
