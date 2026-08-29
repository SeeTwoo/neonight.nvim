local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/TimUntersberger/neogit"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.fg_pop3 },
    NeogitRemote               = { fg = c.fg8 },
    NeogitHunkHeader           = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight  = { bg = c.fg_dim4, fg = c.fg1 },
    NeogitDiffContextHighlight = { bg = Util.blend_bg(c.fg_dim4, 0.5), fg = c.fg_dim3 },
    NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

return M
