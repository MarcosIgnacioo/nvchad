-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "everblush",
  hl_override = {
    -- Type = { fg = "#ffccdf" },
    -- ["@type"] = { fg = "#ffccdf" },

    -- Boolean = { bold = true },
    -- ["@boolean"] = { bold = true },
    --
    -- Special = { bold = true, italic = true, fg = "#ebb5d7" },
    -- ["@special"] = { italic = true, bold = true, fg = "#ebb5d7" },
    --
    -- Comment = { bold = true, italic = true },
    -- ["@comment"] = { italic = true, bold = true },
    --
    -- Variable = { bold = true, fg = "nord_blue" },
    -- ["@variable"] = { bold = true, fg = "nord_blue" },
    --
    -- Keyword = { bold = true, fg = "#f5aa64" },
    -- ["@keyword"] = { bold = true, fg = "#f5aa64" },
    --
    -- Function = { italic = true, bold = true },
    -- ["@function"] = { italic = true, bold = true },
    --
    -- Operator = { bold = true, fg = "white" },
    -- ["@operator"] = { bold = true, fg = "white" },
    String = { fg = "teal" },
    ["@string"] = { italic = true, fg = "teal" },
  },
}

M.disabled = {
  n = {
    ["<leader>f"] = "",
    ["v"] = "",
  }
}

return M
