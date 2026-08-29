local M = {}

M.url = "https://github.com/nvimdev/dashboard-nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- General
    DashboardHeader           = { fg = c.fg1 },
    DashboardFooter           = { fg = c.fg_pop1 },
    -- Hyper theme
    DashboardProjectTitle     = { fg = c.fg_pop2 },
    DashboardProjectTitleIcon = { fg = c.fg_accent },
    DashboardProjectIcon      = { fg = c.fg_accent2 },
    DashboardMruTitle         = { fg = c.fg_pop2 },
    DashboardMruIcon          = { fg = c.fg8 },
    DashboardFiles            = { fg = c.fg1 },
    DashboardShortCutIcon     = { fg = c.fg_pop3 },
    -- Doome theme
    DashboardDesc             = { fg = c.fg_pop2 },
    DashboardKey              = { fg = c.fg_accent },
    DashboardIcon             = { fg = c.fg_pop2 },
    DashboardShortCut         = { fg = c.fg_pop2 },
  }
end

return M
