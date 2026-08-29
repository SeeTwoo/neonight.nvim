local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.terminal_black },
    BlinkCmpKindCodeium         = { fg = c.fg10, bg             = c.none },
    BlinkCmpKindCopilot         = { fg = c.fg10, bg             = c.none },
    BlinkCmpKindDefault         = { fg = c.fg_dim3, bg          = c.none },
    BlinkCmpKindSupermaven      = { fg = c.fg10, bg             = c.none },
    BlinkCmpKindTabNine         = { fg = c.fg10, bg             = c.none },
    BlinkCmpLabel               = { fg = c.fg, bg               = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.fg_dim4, bg        = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.fg_pop1, bg            = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg               = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_highlight, bg = c.bg_float },
  }

  require("tokyonight.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  return ret
end

return M
