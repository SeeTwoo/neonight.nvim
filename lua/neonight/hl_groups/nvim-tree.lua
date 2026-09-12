local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NvimTreeNormal        = { bg = c.dark_blue1},
  }
end

return M
