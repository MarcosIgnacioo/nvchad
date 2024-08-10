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
        backdrop = 0.96,        -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
        width = 99,             -- width of the Zen window
        height = 1,             -- height of the Zen window
        options = {
          signcolumn = "no",    -- disable signcolumn
          cursorcolumn = false, -- disable cursor column
        }
      },
      plugins = {
        options = {
          enabled = true,
          ruler = true,   -- disables the ruler text in the cmd line area
          showcmd = true, -- disables the command in the last line of the screen
          laststatus = 0, -- turn off the statusline in zen mode
        }
      },
    }
  },
  {
    'ThePrimeagen/harpoon',
    event = 'VeryLazy',
    config = function()
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>m", mark.add_file)
      vim.keymap.set("n", "<leader>t", ui.toggle_quick_menu)

      vim.keymap.set("n", ";1", function() ui.nav_file(1) end)
      vim.keymap.set("n", ";2", function() ui.nav_file(2) end)
      vim.keymap.set("n", ";3", function() ui.nav_file(3) end)
      vim.keymap.set("n", ";4", function() ui.nav_file(4) end)
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
  },
  "nvim-pack/nvim-spectre",
  "tpope/vim-dadbod",
  "kristijanhusak/vim-dadbod-completion",
  "kristijanhusak/vim-dadbod-ui",
  -- lazy.nvim:
  "sindrets/diffview.nvim",
  {
    "troydm/zoomwintab.vim",
    event = "VeryLazy",
  },
  {
    "knubie/vim-kitty-navigator",
    event = "VeryLazy",
  },
  {
    "which-key.nvim",
    enabled = false
  },
  {
    "lukas-reineke/indent-blankline.nvim ",
    enabled = false
  },
  {
    "duane9/nvim-rg",
    event = "VeryLazy",
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
    event = "VeryLazy",
    config = function()
      require('Comment').setup()
    end
  }, {
  "mg979/vim-visual-multi",
  event = "VeryLazy",
},
  {
    "jghauser/kitty-runner.nvim",
    event = "VeryLazy",
    config = function()
      local opts = require("kitty-runner.config").window_config
      opts.kitty_port = "unix:@mykitty"
      require("kitty-runner").setup(opts)
    end
  },
  {
    "j-morano/buffer_manager.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
      require("buffer_manager").setup({})
      require "configs.buffer_man"
    end
  },
  {
    'echasnovski/mini.files',
    config = function()
      require('mini.files').setup({
        mappings = {
          go_in       = 'L',
          go_in_plus  = 'l',
          go_out      = 'H',
          go_out_plus = 'h',
        },
      })
    end,
    version = '*',
    event = "VeryLazy",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {
      bind = true, -- This is mandatory, otherwise border config won't get registered.
      handler_opts = {
        border = "rounded"
      },
      -- or, provide a table with 3 icons
      hint_prefix = {
        above = "↙ ", -- when the hint is on the line above the current line
        current = "← ", -- when the hint is on the same line
        below = "↖ " -- when the hint is on the line below the current line
      }
    },
    config = function(_, opts) require 'lsp_signature'.setup(opts) end
  },
  {
    'MattesGroeger/vim-bookmarks',
    event = "VeryLazy",
  },
  {
    "NvChad/ui",
    config = function()
      vim.opt.statusline = ""
    end
  }

}
