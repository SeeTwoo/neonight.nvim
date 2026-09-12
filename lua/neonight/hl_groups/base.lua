local M = {}

---@type tokyonight.HighlightsFn
---
---
--- bg hierachy
---
--- normal
--- color column
--- cursor line
--- status line 1
--- status line 2
--- status line 3
--- popup menu
function M.get(c)
  return {
    ColorColumn                 = { bg = c.dark_blue1 },
    Comment                     = { fg = c.dim_blue },
    CursorLine                  = { bg = c.dark_blue2 },
    CursorLineNr                = { fg = c.light_blue, bold = true },
    FloatBorder                 = { fg = c.light_blue},
    FloatTitle                  = { link = "FloatBorder" },
    LineNr                      = { link = "Comment" },
    MatchParen                  = { fg = c.orange, bold = true },
    ModeMsg                     = { link = "CursorLineNr" },
    Normal                      = { fg = c.white, bg = c.dark_blue },
    NormalFloat                 = { link = "Normal" },
    NormalSB                    = { bg = c.dark_blue6 },
    Pmenu                       = { bg = c.dark_blue6 },
    PmenuSel                    = { bg = c.dark_blue7 },
    StatusLine                  = { bg = c.dark_blue3},
    Todo                        = { bg = c.roy_blue, bold = true },
    WinSeparator                = { link = "FloatBorder" },

    Search                      = { fg = c.white, bg = c.bronze },
    IncSearch                   = { fg = c.white, bg = c.saffron },
    CurSearch                   = { link = "IncSearch" },

    Delimiter                   = { link = "Normal" },
    Type                        = { fg = c.cyan },
    Statement                   = { fg = c.deep_pink },
    String                      = { fg = c.orchid},
  }
end

return M
