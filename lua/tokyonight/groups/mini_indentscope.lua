local M = {}

M.url = "https://github.com/echasnovski/mini.indentscope"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIndentscopeSymbol = { fg = c.fg_pop1, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible
  }
end

return M
