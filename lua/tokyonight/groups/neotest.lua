local M = {}

M.url = "https://github.com/nvim-neotest/neotest"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeotestAdapterName  = { fg = c.fg8, bold = true },
    NeotestBorder       = { fg = c.fg1 },
    NeotestDir          = { fg = c.fg1 },
    NeotestExpandMarker = { fg = c.fg_sidebar },
    NeotestFailed       = { fg = c.fg9 },
    NeotestFile         = { fg = c.fg10 },
    NeotestFocused      = { fg = c.fg_accent2 },
    NeotestIndent       = { fg = c.fg_sidebar },
    NeotestMarked       = { fg = c.fg1 },
    NeotestNamespace    = { fg = c.green2 },
    NeotestPassed       = { fg = c.fg5 },
    NeotestRunning      = { fg = c.fg_accent2 },
    NeotestSkipped      = { fg = c.fg1 },
    NeotestTarget       = { fg = c.fg1 },
    NeotestTest         = { fg = c.fg_sidebar },
    NeotestWinSelect    = { fg = c.fg1 },
  }
end

return M
