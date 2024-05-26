return {
 {
  "L3MON4D3/LuaSnip",
  -- follow latest release.
  version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  config = function()
   require "configs.luasnip"
  end,
 },
 {
  "stevearc/conform.nvim",
  event = 'BufWritePre', -- uncomment for format on save
  config = function()
   require "configs.conform"
  end,
 },
 {
  "williamboman/mason.nvim",
  opts = {
   ensure_installed = {
    "lua-language-server", "stylua",
    "html-lsp", "css-lsp", "prettier", "htmx", "gopls",
    "gofmt", "lua_format", "pyright", "eslint", "prettierd", "zls"
   },
  }
 },
 {
  "neovim/nvim-lspconfig",
  config = function()
   require("nvchad.configs.lspconfig").defaults()
   require "configs.lspconfig"
  end,
 },
 {
  'folke/zen-mode.nvim',
  event = 'VeryLazy',
  opts = {
   window = {
    backdrop = 0.96,       -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
    width = 90,            -- width of the Zen window
    height = 1,            -- height of the Zen window
    options = {
     signcolumn = "no",    -- disable signcolumn
     cursorcolumn = false, -- disable cursor column
    }
   },
   plugins = {
    options = {
     enabled = true,
     ruler = true,    -- disables the ruler text in the cmd line area
     showcmd = false, -- disables the command in the last line of the screen
     laststatus = 3,  -- turn off the statusline in zen mode
    }
   }
  }
 },
 {
  'ThePrimeagen/harpoon',
  event = 'VeryLazy',
  config = function()
   local mark = require("harpoon.mark")
   local ui = require("harpoon.ui")

   vim.keymap.set("n", "<leader>t", mark.add_file)
   vim.keymap.set("n", "<leader>m", ui.toggle_quick_menu)

   vim.keymap.set("n", ";a", function() ui.nav_file(1) end)
   vim.keymap.set("n", ";s", function() ui.nav_file(2) end)
   vim.keymap.set("n", ";d", function() ui.nav_file(3) end)
   vim.keymap.set("n", ";f", function() ui.nav_file(4) end)
  end
 },
 {
  "ray-x/go.nvim",
  dependencies = { -- optional packages
   "ray-x/guihua.lua",
   "neovim/nvim-lspconfig",
   "nvim-treesitter/nvim-treesitter",
  },
  config = function()
   require("go").setup()
  end,
  event = { "CmdlineEnter" },
  ft = { "go", 'gomod' },
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
 },
 {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
   require "configs.null-ls"
  end,
 },
 {
  "ggandor/leap.nvim",
  event = 'VeryLazy',
  config = function()
   require "configs.leap"
  end,
 }
}
