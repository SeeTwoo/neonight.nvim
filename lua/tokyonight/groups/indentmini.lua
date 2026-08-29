local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_dim4, nocombine = true },
    IndentLineCurrent          = { fg = c.fg_pop1, nocombine = true },
  }
end

return M
