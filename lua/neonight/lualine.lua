local c = require("neonight.colors")

local M = {}

-- Helper to generate mode colors
-- We use the vibrant color as BG for 'a' (Mode) 
-- But use it as FG for 'b' and 'c' to keep it dark.
local function generate_mode(color)
    return {
        a = { fg = c.dark_blue, bg = color, gui = "bold" },
        b = { fg = color, bg = c.dark_blue4},
        c = { fg = c.white, bg = c.dark_blue3},
        x = { fg = c.white, bg = c.dark_blue3},
        y = { fg = color, bg = c.dark_blue4},
        z = { fg = c.white, bg = c.dark_blue5},
    }
end

M.normal   = generate_mode(c.orchid)
M.insert   = generate_mode(c.light_blue)
M.visual   = generate_mode(c.cyan)
M.command  = generate_mode(c.deep_pink)
M.replace  = generate_mode(c.orange)

M.inactive = {
    a = { fg = c.dim_blue, bg = c.dark_blue2, gui = "bold" },
    b = { fg = c.dim_blue, bg = c.dark_blue2},
    c = { fg = c.dim_blue, bg = c.dark_blue2},
}

return M
