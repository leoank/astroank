return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
     filesystem = {
      filtered_items = {
        visible = true,
        },
      },
    }
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "jbyuki/nabla.nvim"
  },
  {
    "michaelb/sniprun",
    keys = {},
    build = "bash ./install.sh 1",
    cmd = "SnipRun",
    opts = {},
    config = function()
      require("sniprun").setup({
        selected_interpreters = {'Python3_fifo'},
        repl_enable = {'Python3_fifo'},
        display = {"TerminalWithCode"},
        display_options = {
          terminal_width = 85
        }
      })
    end,
  },
  {
    "linux-cutlist/venv-selector.nvim",
    opts = {
      anaconda_envs_path = "~/micromamba/envs"
    }
  },
}
