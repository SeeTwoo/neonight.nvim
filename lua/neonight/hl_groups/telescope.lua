local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    TelescopeBorder         = { link = "FloatBorder" },
    TelescopeBorder         = { link = "FloatTitle" },
  }
end

return M
