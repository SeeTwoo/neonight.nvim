local M = {}

---@param style? string
function M.get(style)
  local colors, config = require("tokyonight.colors").setup({
    style = style,
  })

  local hl = {}

  hl.normal = {
    a = { bg = colors.fg1, fg = colors.black },
    b = { bg = colors.fg_dim4, fg = colors.fg1 },
    c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
  }

  hl.insert = {
    a = { bg = colors.fg5, fg = colors.black },
    b = { bg = colors.fg_dim4, fg = colors.fg5 },
  }

  hl.command = {
    a = { bg = colors.fg_accent2, fg = colors.black },
    b = { bg = colors.fg_dim4, fg = colors.fg_accent2 },
  }

  hl.visual = {
    a = { bg = colors.fg_pop3, fg = colors.black },
    b = { bg = colors.fg_dim4, fg = colors.fg_pop3 },
  }

  hl.replace = {
    a = { bg = colors.fg9, fg = colors.black },
    b = { bg = colors.fg_dim4, fg = colors.fg9 },
  }

  hl.terminal = {
    a = { bg = colors.fg6, fg = colors.black },
    b = { bg = colors.fg_dim4, fg = colors.fg6 },
  }

  hl.inactive = {
    a = { bg = colors.bg_statusline, fg = colors.fg1 },
    b = { bg = colors.bg_statusline, fg = colors.fg_dim4, gui = "bold" },
    c = { bg = colors.bg_statusline, fg = colors.fg_dim4 },
  }

  if config.lualine_bold then
    for _, mode in pairs(hl) do
      mode.a.gui = "bold"
    end
  end
  return hl
end

return M
