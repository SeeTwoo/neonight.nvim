local M = {}

M.url = "https://github.com/echasnovski/mini.starter"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = c.fg_accent2, italic = true },
    MiniStarterHeader     = { fg = c.fg1 },
    MiniStarterInactive   = { fg = c.comment, style = opts.styles.comments },
    MiniStarterItem       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.border_highlight },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterQuery      = { fg = c.info },
    MiniStarterSection    = { fg = c.fg_pop1 },
  }
end

return M
