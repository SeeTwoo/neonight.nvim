local M = {}

M.url = "https://github.com/folke/lazy.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    LazyProgressDone = { bold = true, fg = c.fg7 },
    LazyProgressTodo = { bold = true, fg = c.fg_dim4 },
  }
end

return M
