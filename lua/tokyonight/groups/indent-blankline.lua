local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.fg_dim4, nocombine = true },
    IndentBlanklineContextChar = { fg = c.fg_pop1, nocombine = true },
    IblIndent                  = { fg = c.fg_dim4, nocombine = true },
    IblScope                   = { fg = c.fg_pop1, nocombine = true },
  }
end

return M
