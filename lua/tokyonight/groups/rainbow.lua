local M = {}

M.url = "https://github.com/HiPhish/rainbow-delimiters.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    -- rainbow-delimiters
    RainbowDelimiterRed    = { fg = c.fg9 },
    RainbowDelimiterOrange = { fg = c.fg_accent },
    RainbowDelimiterYellow = { fg = c.fg_accent2 },
    RainbowDelimiterGreen  = { fg = c.fg5 },
    RainbowDelimiterBlue   = { fg = c.fg1 },
    RainbowDelimiterViolet = { fg = c.fg8 },
    RainbowDelimiterCyan   = { fg = c.fg_pop2 },
  }
end

return M
