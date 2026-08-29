local M = {}

M.url = "https://github.com/echasnovski/mini.statusline"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniStatuslineDevinfo     = { fg = c.fg_dim3, bg = c.fg_dim4 },
    MiniStatuslineFileinfo    = { fg = c.fg_dim3, bg = c.fg_dim4 },
    MiniStatuslineFilename    = { fg = c.fg_dim3, bg = c.bg_highlight },
    MiniStatuslineInactive    = { fg = c.fg1, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.fg_accent2, bold = true },
    MiniStatuslineModeInsert  = { fg = c.black, bg = c.fg5, bold = true },
    MiniStatuslineModeNormal  = { fg = c.black, bg = c.fg1, bold = true },
    MiniStatuslineModeOther   = { fg = c.black, bg = c.fg10, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.fg9, bold = true },
    MiniStatuslineModeVisual  = { fg = c.black, bg = c.fg_pop3, bold = true },
  }
end

return M
