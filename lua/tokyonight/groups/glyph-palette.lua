local M = {}

M.url = "https://github.com/lambdalisue/glyph-palette.vim"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    GlyphPalette1 = { fg = c.red1 },
    GlyphPalette2 = { fg = c.fg5 },
    GlyphPalette3 = { fg = c.fg_accent2 },
    GlyphPalette4 = { fg = c.fg1 },
    GlyphPalette6 = { fg = c.fg6 },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.fg9 },
  }
end

return M
