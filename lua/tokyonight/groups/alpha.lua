local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.fg_accent },
    AlphaHeader      = { fg = c.fg1 },
    AlphaHeaderLabel = { fg = c.fg_accent },
    AlphaFooter      = { fg = c.fg_pop1 },
    AlphaButtons     = { fg = c.fg_pop2 },
  }
end

return M
