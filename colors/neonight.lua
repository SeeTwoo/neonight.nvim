local config = require("tokyonight.config")

local M = {}
---@type {light?: string, dark?: string}
M.styles = {}

---@param opts? tokyonight.Config
do
  opts = {style = "neonight"}
  opts = require("tokyonight.config").extend(opts)
  M.styles[vim.o.background] = opts.style

  local colors = require("tokyonight.colors").setup(opts)
  local groups = require("tokyonight.groups").setup(colors, opts)

  -- only needed to clear when not the default colorscheme
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "tokyonight-" .. opts.style

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end
  return colors, groups, opts
end

-- M.setup = config.setup

return M
