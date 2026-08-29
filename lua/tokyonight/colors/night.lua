local ret = {
  bg = "#1a1b26",
  bg_dark = "#1f2335",
  bg_dark1 = "#1b1e2d",
  bg_highlight = "#292e42",
  fg1 = "#7aa2f7",
  fg10 = "#3d59a1",
  fg_pop1 = "#2ac3de",
  fg12 = "#0db9d7",
  fg2 = "#89ddff",
  fg3 = "#b4f9f8",
  fg4 = "#394b70",
  comment = "#565f89",
  fg_pop2 = "#7dcfff",
  fg_dim1 = "#545c7e",
  fg_dim2 = "#737aa2",
  fg = "#c0caf5",
  fg_dim3 = "#a9b1d6",
  fg_dim4 = "#3b4261",
  fg5 = "#9ece6a",
  fg6 = "#73daca",
  green2 = "#41a6b5",
  fg_pop3 = "#bb9af7",
  fg7 = "#ff007c",
  fg_accent = "#ff9e64",
  fg8 = "#9d7cd8",
  fg9 = "#f7768e",
  red1 = "#db4b4b",
  fg10 = "#1abc9c",
  terminal_black = "#414868",
  fg_accent2 = "#e0af68",
  git = {
    add = "#449dab",
    change = "#6183bb",
    delete = "#914c54",
  },
}

return ret

--[[
---@type Palette
return vim.tbl_deep_extend("force", ret, {
  bg = "#1a1b26",
  bg_dark = "#16161e",
  bg_dark1 = "#0C0E14",
})
]]
