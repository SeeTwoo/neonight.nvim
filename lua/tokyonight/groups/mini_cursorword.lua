local M = {}

M.url = "https://github.com/echasnovski/mini.cursorword"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniCursorword        = { bg = c.fg_dim4 },
    MiniCursorwordCurrent = { bg = c.fg_dim4 },
  }
end

return M
