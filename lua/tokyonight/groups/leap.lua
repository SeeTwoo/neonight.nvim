local M = {}

M.url = "https://github.com/ggandor/leap.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LeapMatch          = { bg = c.fg7, fg = c.fg, bold = true },
    LeapLabel          = { fg = c.fg7, bold = true },
    LeapBackdrop       = { fg = c.fg_dim1 },
  }
end

return M
