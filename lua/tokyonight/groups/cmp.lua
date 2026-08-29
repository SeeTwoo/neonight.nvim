local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText           = { fg = c.terminal_black },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.fg_dim4, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.fg_pop1, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.fg_pop1, bg = c.none },
    CmpItemKindCodeium     = { fg = c.fg10, bg = c.none },
    CmpItemKindCopilot     = { fg = c.fg10, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.fg10, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg_dim3, bg = c.none },
    CmpItemKindTabNine     = { fg = c.fg10, bg = c.none },
    CmpItemMenu            = { fg = c.comment, bg = c.none },
  }

  require("tokyonight.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
