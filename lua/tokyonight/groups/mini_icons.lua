local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIconsGrey   = { fg = c.fg },
    MiniIconsPurple = { fg = c.fg8 },
    MiniIconsBlue   = { fg = c.fg1 },
    MiniIconsAzure  = { fg = c.info },
    MiniIconsCyan   = { fg = c.fg10 },
    MiniIconsGreen  = { fg = c.fg5 },
    MiniIconsYellow = { fg = c.fg_accent2 },
    MiniIconsOrange = { fg = c.fg_accent },
    MiniIconsRed    = { fg = c.fg9 },
  }
end

return M
