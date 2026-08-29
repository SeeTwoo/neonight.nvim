local M = {}

M.url = "https://github.com/folke/trouble.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TroubleText   = { fg = c.fg_dim3 },
    TroubleCount  = { fg = c.fg_pop3, bg = c.fg_dim4 },
    TroubleNormal = { fg = c.fg, bg = c.bg_sidebar },
  }
end

return M
