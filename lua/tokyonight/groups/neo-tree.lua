local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  local dark = opts.styles.sidebars == "transparent" and c.none
    or Util.blend(c.bg_sidebar, 0.8, opts.style == "day" and c.fg1 or "#000000")
  -- stylua: ignore
  return {
    NeoTreeDimText             = { fg = c.fg_dim4 },
    NeoTreeFileName            = { fg = c.fg_sidebar },
    NeoTreeGitModified         = { fg = c.fg_accent },
    NeoTreeGitStaged           = { fg = c.fg6 },
    NeoTreeGitUntracked        = { fg = c.fg_pop3 },
    NeoTreeNormal              = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC            = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive           = { fg = c.fg1, bg = c.bg_dark, bold = true },
    NeoTreeTabInactive         = { fg = c.fg_dim1, bg = dark },
    NeoTreeTabSeparatorActive  = { fg = c.fg1, bg = c.bg_dark },
    NeoTreeTabSeparatorInactive= { fg = c.bg, bg = dark },
  }
end

return M
