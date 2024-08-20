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
  {
    "robitx/gp.nvim",
    config = function()
      local conf = {
        providers = {
          openai = { disable = true },
          ollama = {
            disable = false,
          },
        },
      }
      require("gp").setup(conf)
    end,
  },
}
