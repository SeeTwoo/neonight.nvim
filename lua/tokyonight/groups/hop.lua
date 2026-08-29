local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.fg7, bold = true },
    HopNextKey1 = { fg = c.fg12, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.fg12, 0.6) },
    HopUnmatched = { fg = c.fg_dim1 },
  }
end

return M
