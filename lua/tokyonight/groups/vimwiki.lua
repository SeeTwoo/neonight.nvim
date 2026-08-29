local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    VimwikiLink = { fg = c.fg1, bg = c.none },
    VimwikiHeaderChar = { fg = c.fg_accent2, bg = c.none },
    VimwikiHR = { fg = c.fg_accent2, bg = c.none },
    VimwikiList = { fg = c.fg_accent, bg = c.none },
    VimwikiTag = { fg = c.fg5, bg = c.none },
    VimwikiMarkers = { fg = c.fg1, bg = c.none },
  }
  for i, color in ipairs(c.rainbow) do
    ret["VimwikiHeader" .. i] = { fg = color, bg = c.none, bold = true }
  end
  return ret
end

return M
