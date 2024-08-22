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

        agents = {
          {
            provider = "ollama",
            name = "DeepSeek Coder V2",
            chat = true,
            command = false,
            -- string with model name or table with model name and parameters
            model = {
              model = "deepseek-coder-v2:latest",
              temperature = 0.6,
              top_p = 1,
              min_p = 0.05,
            },
            -- system prompt (use this to specify the persona/role of the AI)
            system_prompt = "You are a coding AI assistant.",
          },
        },
      }
      require("gp").setup(conf)
    end,
  },
}
