local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.fg_accent2 },
    NoiceCmdlineIconLua            = { fg = c.fg_pop1 },
    NoiceCmdlinePopupBorderInput   = { fg = c.fg_accent2 },
    NoiceCmdlinePopupBorderLua     = { fg = c.fg_pop1 },
    NoiceCmdlinePopupTitleInput    = { fg = c.fg_accent2 },
    NoiceCmdlinePopupTitleLua      = { fg = c.fg_pop1 },
    NoiceCompletionItemKindDefault = { fg = c.fg_dim3, bg = c.none },
  }
  require("tokyonight.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
