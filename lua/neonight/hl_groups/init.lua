local M = {}

local function merge_groups(target, source)
  for k, v in pairs(source) do
    target[k] = v
  end
end

function M.setup(colors)
  local groups = {}

  local modules = {
    "neonight.hl_groups.base",
    "neonight.hl_groups.nvim-tree",
    "neonight.hl_groups.treesitter",
    "neonight.hl_groups.telescope",
   -- "neonight.hl_groups.which-key",
  }

  for _, mod in ipairs(modules) do
    local ok, hl_mod = pcall(require, mod)
    if ok then
      merge_groups(groups, hl_mod.get(colors))
    else
      vim.notify("Neonight: Could not load " .. mod, vim.log.levels.ERROR)
    end
  end
  return groups
end

return M
