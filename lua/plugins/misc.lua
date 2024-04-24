-- Miscellaneous plugins
---@type LazySpec
return {
  "linux-cultist/venv-selector.nvim",
  {
    "vhyrro/luarocks.nvim",
    priority = 1000,
    config = true,
  },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
}
