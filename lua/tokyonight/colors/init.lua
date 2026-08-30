local Util = require("tokyonight.util")

local M = {}

---@type table<string, Palette|fun(opts:tokyonight.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("tokyonight.colors." .. style))
  end,
})

---@param opts? tokyonight.Config
function M.setup(opts)
  opts = require("tokyonight.config").extend(opts)

  Util.day_brightness = opts.day_brightness

  local palette = M.styles[opts.style]
  if type(palette) == "function" then
    palette = palette(opts) --[[@as Palette]]
  end

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green2, 0.25),
    delete = Util.blend_bg(colors.red1, 0.25),
    change = Util.blend_bg(colors.fg4, 0.15),
    text = colors.fg4,
  }

  colors.git.ignore = colors.fg_dim1
  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = Util.blend_bg(colors.fg6, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = colors.bg
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = colors.bg

  colors.bg_visual = Util.blend_bg(colors.fg10, 0.4)
  colors.bg_search = colors.fg10
  colors.fg_sidebar = colors.fg_dim3
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.fg1
  colors.warning = colors.fg_accent2
  colors.info = colors.fg10
  colors.hint = colors.fg10

  colors.rainbow = {
    colors.fg1,
    colors.fg_accent2,
    colors.fg5,
    colors.fg10,
    colors.fg_pop3,
    colors.fg8,
    colors.fg_accent,
    colors.fg9,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.black,
    black_bright   = colors.terminal_black,
    fg9            = colors.fg9,
    red_bright     = Util.brighten(colors.fg9),
    fg5          = colors.fg5,
    green_bright   = Util.brighten(colors.fg5),
    fg_accent2         = colors.fg_accent2,
    yellow_bright  = Util.brighten(colors.fg_accent2),
    fg1           = colors.fg1,
    fg1_bright    = Util.brighten(colors.fg1),
    fg_pop3        = colors.fg_pop3,
    magenta_bright = Util.brighten(colors.fg_pop3),
    fg_pop2           = colors.fg_pop2,
    cyan_bright    = Util.brighten(colors.fg_pop2),
    white          = colors.fg_dim3,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
