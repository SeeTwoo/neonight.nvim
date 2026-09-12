do
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.termguicolors = true
  vim.g.colors_name = "neonight"

  local colors = require("neonight.colors")
  local hl_groups = require("neonight.hl_groups").setup(colors)

  for group, hl in pairs(hl_groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end
end
