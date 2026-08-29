local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    IlluminatedWordRead  = { bg = c.fg_dim4 },
    IlluminatedWordText  = { bg = c.fg_dim4 },
    IlluminatedWordWrite = { bg = c.fg_dim4 },
    illuminatedCurWord   = { bg = c.fg_dim4 },
    illuminatedWord      = { bg = c.fg_dim4 },
  }
end

return M
