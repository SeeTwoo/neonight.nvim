local M = {}

M.url = "https://github.com/ibhagwan/fzf-lua"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    FzfLuaBorder        = { fg = c.border_highlight, bg = c.bg_float },
    FzfLuaCursor        = "IncSearch",
    FzfLuaDirPart       = { fg = c.fg_dim3 },
    FzfLuaFilePart      = "FzfLuaFzfNormal",
    FzfLuaFzfCursorLine = "Visual",
    FzfLuaFzfNormal     = { fg = c.fg },
    FzfLuaFzfPointer    = { fg = c.fg7 },
    FzfLuaFzfSeparator  = { fg = c.fg_accent, bg = c.bg_float },
    FzfLuaHeaderBind    = "@punctuation.special",
    FzfLuaHeaderText    = "Title",
    FzfLuaNormal        = { fg = c.fg, bg = c.bg_float },
    FzfLuaPath          = "Directory",
    FzfLuaPreviewTitle  = { fg = c.border_highlight, bg = c.bg_float },
    FzfLuaTitle         = { fg = c.fg_accent, bg = c.bg_float },
  }
end

return M
