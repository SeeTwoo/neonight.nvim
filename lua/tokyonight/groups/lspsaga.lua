local M = {}

M.url = "https://github.com/glepnir/lspsaga.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DefinitionCount            = { fg = c.fg8 },
    DefinitionIcon             = { fg = c.fg1 },
    DiagnosticInformation      = "DiagnosticInfo",
    DiagnosticWarning          = "DiagnosticWarn",
    LspFloatWinBorder          = { fg = c.border_highlight },
    LspFloatWinNormal          = { bg = c.bg_float },
    LspSagaBorderTitle         = { fg = c.fg_pop2 },
    LspSagaCodeActionBorder    = { fg = c.fg1 },
    LspSagaCodeActionContent   = { fg = c.fg8 },
    LspSagaCodeActionTitle     = { fg = c.fg_pop1 },
    LspSagaDefPreviewBorder    = { fg = c.fg5 },
    LspSagaFinderSelection     = { fg = c.bg_visual },
    LspSagaHoverBorder         = { fg = c.fg1 },
    LspSagaRenameBorder        = { fg = c.fg5 },
    LspSagaSignatureHelpBorder = { fg = c.fg9 },
    ReferencesCount            = { fg = c.fg8 },
    ReferencesIcon             = { fg = c.fg1 },
    TargetWord                 = { fg = c.fg_pop2 },
  }
end

return M
