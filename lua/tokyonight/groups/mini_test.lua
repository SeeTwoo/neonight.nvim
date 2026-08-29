local M = {}

M.url = "https://github.com/echasnovski/mini.test"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.fg9, bold = true },
    MiniTestPass = { fg = c.fg5, bold = true },
  }
end

return M
