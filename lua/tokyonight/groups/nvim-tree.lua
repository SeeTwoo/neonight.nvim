local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeFolderIcon   = { bg = c.none, fg = c.fg1 },
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },
    NvimTreeGitNew       = { fg = c.git.add },
    NvimTreeImageFile    = { fg = c.fg_sidebar },
    NvimTreeIndentMarker = { fg = c.fg_dim4 },
    NvimTreeNormal       = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC     = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeOpenedFile   = { bg = c.bg_highlight },
    NvimTreeRootFolder   = { fg = c.fg1, bold = true },
    NvimTreeSpecialFile  = { fg = c.fg8, underline = true },
    NvimTreeSymlink      = { fg = c.fg1 },
    NvimTreeWinSeparator = { fg = c.border_highlight, bg = c.bg_sidebar },
  }
end

return M
