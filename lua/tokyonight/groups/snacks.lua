local Util = require("tokyonight.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = Util.blend_bg(c.comment, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.comment },
    SnacksNotifierTitleDebug  = { fg = c.comment },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = Util.blend_bg(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = Util.blend_bg(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = Util.blend_bg(c.fg8, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.fg8 },
    SnacksNotifierTitleTrace  = { fg = c.fg8 },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = Util.blend_bg(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.fg_pop2 },
    SnacksDashboardFooter     = { fg = c.fg_pop1 },
    SnacksDashboardHeader     = { fg = c.fg1 },
    SnacksDashboardIcon       = { fg = c.fg_pop1 },
    SnacksDashboardKey        = { fg = c.fg_accent },
    SnacksDashboardSpecial    = { fg = c.fg8 },
    SnacksDashboardDir        = { fg = c.fg_dim1 },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = Util.blend_bg(c.fg_pop1, 0.3), fg = c.fg_pop1 },
    SnacksProfilerBadgeInfo   = { bg = Util.blend_bg(c.fg_pop1, 0.1), fg = c.fg_pop1 },
    SnacksFooterKey           = "SnacksProfilerIconInfo",
    SnacksFooterDesc          = "SnacksProfilerBadgeInfo",
    SnacksProfilerIconTrace   = { bg = Util.blend_bg(c.fg4, 0.3), fg = c.fg_dim1 },
    SnacksProfilerBadgeTrace  = { bg = Util.blend_bg(c.fg4, 0.1), fg = c.fg_dim1 },
    SnacksIndent              = { fg = c.fg_dim4, nocombine = true },
    SnacksIndentScope         = { fg = c.fg_pop1, nocombine = true },
    SnacksZenIcon             = { fg = c.fg8 },
    SnacksInputIcon           = { fg = c.fg_pop1 },
    SnacksInputBorder         = { fg = c.fg_accent2 },
    SnacksInputTitle          = { fg = c.fg_accent2 },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.fg_accent, bg = c.bg_float },
    SnacksPickerInputTitle    = { fg = c.fg_accent, bg = c.bg_float },
    SnacksPickerBoxTitle      = { fg = c.fg_accent, bg = c.bg_float },
    SnacksPickerSelected      = { fg = c.fg7},
    SnacksPickerToggle        = "SnacksProfilerBadgeInfo",
    SnacksPickerPickWinCurrent= { fg = c.fg, bg = c.fg7, bold = true },
    SnacksPickerPickWin       = { fg = c.fg, bg = c.bg_search, bold = true },
    SnacksGhLabel             = { fg = c.fg_pop1, bold = true },
    SnacksDiffLabel           = { fg = c.fg_pop1, bold = true },
    SnacksGhDiffHeader        = { bg = Util.blend_bg(c.fg_pop1, 0.1), fg = c.fg_pop1 }
  }
  for i, color in ipairs(c.rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  return ret
end

return M
