local luasnip = require "luasnip"
luasnip.filetype_extend("javascript", { "javascriptreact" })
luasnip.filetype_extend("javascript", { "html" })
-- luasnip.filetype_extend("markdown", { "html" })
luasnip.filetype_extend("php", { "html" })
luasnip.filetype_extend("html", { "php" })
luasnip.filetype_extend("templ", { "html" })
luasnip.filetype_extend("javascriptreact", { "html" })
luasnip.filetype_extend("typescriptreact", { "html" })
luasnip.filetype_extend("typescript", { "javascriptreact" })
luasnip.filetype_extend("html", { "template" })
luasnip.filetype_extend("vue", { "html" })
require("luasnip/loaders/from_vscode").lazy_load()
