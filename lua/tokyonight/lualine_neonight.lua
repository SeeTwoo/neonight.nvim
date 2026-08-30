local c

c = require("tokyonight.colors.neonight")

local M = {}

-- Helper to generate mode colors
-- We use the vibrant color as BG for 'a' (Mode) 
-- But use it as FG for 'b' and 'c' to keep it dark.
local function generate_mode(color)
    return {
        a = { fg = c.bg,      bg = color, gui = "bold" },
        b = { fg = color,     bg = c.bg_alt1},
        c = { fg = c.fg0,     bg = c.bg_alt},
        x = { fg = c.fg0,     bg = c.bg_alt},
        y = { fg = c.fg_dim2, bg = c.bg_alt1},
        z = { fg = c.bg,      bg = color},
    }
end

M.normal   = generate_mode(c.fg8)
M.insert   = generate_mode(c.fg1)
M.visual   = generate_mode(c.fg_pop1)
M.command  = generate_mode(c.fg_pop3)
M.replace  = generate_mode(c.fg3)

M.inactive = {
    a = { fg = c.fg_dim4, bg = c.bg_alt, gui = "bold" },
    b = { fg = c.fg_dim4, bg = c.bg_alt },
    c = { fg = c.fg_dim4, bg = c.bg_alt },
}

return M
