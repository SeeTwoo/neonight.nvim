local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.comment },
    GrugFarHelpHeaderKey          = { fg = c.fg_pop2 },
    GrugFarInputLabel             = { fg = c.fg_pop1 },
    GrugFarInputPlaceholder       = { fg = c.fg_dim1 },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.fg_accent },
    GrugFarResultsLineColumn      = { fg = c.fg_dim1 },
    GrugFarResultsLineNo          = { fg = c.fg_dim1 },
    GrugFarResultsMatch           = { fg = c.black, bg = c.fg9 },
    GrugFarResultsStats           = { fg = c.fg1 },
  }
end

return M
