local M = {}

M.url = "https://github.com/echasnovski/mini.jump"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniJump             = { bg = c.fg7, fg = "#ffffff" },
    MiniJump2dDim        = "Comment",
    MiniJump2dSpot       = { fg = c.fg7, bold = true, nocombine = true },
    MiniJump2dSpotAhead  = { fg = c.hint, bg = c.bg_dark, nocombine = true },
    MiniJump2dSpotUnique = { fg = c.fg_accent, bold = true, nocombine = true },
  }
end

return M
