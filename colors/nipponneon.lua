local function main()
  local opts = {}
  local colors = require("tokyonight.colors").setup(opts)
  local groups = require("tokyonight.groups"),setup(colors, opts)

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "nipponneon"

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and {link = hl} or hl
    vim.api.nvim_set_hl(0, group, hl)
  end
end

do
  main
end
