local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/pwntester/octo.nvim"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    OctoDetailsLabel          = { fg = c.fg_pop1, bold = true },
    OctoDetailsValue          = "@variable.member",
    OctoDirty                 = { fg = c.fg_accent, bold = true },
    OctoIssueTitle            = { fg = c.fg8, bold = true },
    OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
    OctoStateClosed           = "DiagnosticVirtualTextError",
    OctoStateMerged           = { bg = Util.blend_bg(c.fg_pop3, 0.1), fg = c.fg_pop3 },
    OctoStateOpen             = "DiagnosticVirtualTextHint",
    OctoStatePending          = "DiagnosticVirtualTextWarn",
    OctoStatusColumn          = { fg = c.fg_pop1 },

  }
end

return M
