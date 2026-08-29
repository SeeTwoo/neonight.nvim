local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.fg_dim1 },
    FlashLabel    = { bg = c.fg7, bold = true, fg = c.fg },
  }
end

return M
