local M = {}
---@type tokyonight.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    -- C --
    ["@constant.c"]                     = { fg = c.dark_rasberry, bold = true},
    ["@constant.macro.c"]               = { link = "@constant.c"},
    ["@function.c"]                     = { link = "Normal" },
    ["@function.call.c"]                = { link = "Normal" },
    ["@number.c"]                       = { fg = c.lavender_blush },
    ["@string.escape.c"]                = { fg = "#c06fc0"},
    ["@type.builtin.c"]                 = { link = "Type" },
    

    -- rust --


    -- lua --
    ["@constructor.lua"]                = { link = "Normal" },
    ["@property.lua"]                   = { link = "Normal" },
    ["@punctuation.bracket.lua"]        = { link = "Normal" },
    ["@variable.member.lua"]            = { link = "FloatBorder" },
    ["@keyword.conditional.lua"]       = { fg = c.deep_pink},
    ["@keyword.function.lua"]           = { link = "@keyword.conditional.lua"},
    ["@keyword.lua"]                    = { fg = c.dark_rasberry, bold = true,}
  }

  return ret
end

return M
