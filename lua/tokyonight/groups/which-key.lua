local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.fg_pop2 },
    WhichKeyGroup     = { fg = c.fg1 },
    WhichKeyDesc      = { fg = c.fg_pop3 },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal     = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.fg_dim2 },
  }
end

return M
