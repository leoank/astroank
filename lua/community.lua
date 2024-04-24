-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.editing-support.neogen" },
  {
    "danymat/neogen",
    opts = {
      languages = {
        python = {
          template = { annotation_convention = "numpydoc" }
        }
      }
    }
  },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.zig" },
  { import = "astrocommunity.git.neogit" },
  { import = "astrocommunity.git.blame-nvim" },
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.octo-nvim" },
  { import = "astrocommunity.file-explorer.oil-nvim" },
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.scrolling.cinnamon-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },
  { import = "astrocommunity.markdown-and-latex.peek-nvim" },
  { import = "astrocommunity.markdown-and-latex.vimtex"},
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.note-taking.neorg"},
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    opts = {
      load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.keybinds"] = {}, -- Adds default keybindings
        ["core.export"] = {},
        ["core.export.markdown"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        }, -- Enables support for completion plugins
        ["core.journal"] = {}, -- Enables support for the journal module
        ["core.dirman"] = { -- Manages Neorg workspaces
          config = {
            workspaces = {
              home = "~/Sync/Documents/sangrah/norg/home",
              work = "~/Sync/Documents/sangrah/norg/work",
            },
          },
        },
      },
    },
  },
  { import = "astrocommunity.note-taking.obsidian-nvim"},
  {
    "epwalsh/obsidian.nvim",
    event = {"BufReadPre " .. vim.fn.expand "~" .. "/Sync/Documents/sangrah/*.md"},
    opts = {
      dir = vim.env.HOME .. "/Sync/Documents/sangrah"
    }
  },
}
