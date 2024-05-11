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
  {
    "benlubas/molten-nvim",
    version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
    build = ":UpdateRemotePlugins",
    init = function()
          -- this is an example, not a default. Please see the readme for more configuration options
        vim.g.molten_image_provider = "image.nvim"
        vim.g.molten_output_win_max_height = 12
        vim.g.molten_output_virt_lines = true
        vim.g.molten_virt_text_output = true
        vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>",
            { silent = true, desc = "Initialize the plugin" })
        vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>",
            { silent = true, desc = "run operator selection" })
        vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>",
            { silent = true, desc = "evaluate line" })
        vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
            { silent = true, desc = "re-evaluate cell" })
        vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
            { silent = true, desc = "evaluate visual selection" })
        vim.keymap.set("n", "<localleader>rd", ":MoltenDelete<CR>",
            { silent = true, desc = "molten delete cell" })
        vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>",
            { silent = true, desc = "hide output" })
        vim.keymap.set("n", "<localleader>os", ":noautocmd MoltenEnterOutput<CR>",
            { silent = true, desc = "show/enter output" })
    end,
  }
}
