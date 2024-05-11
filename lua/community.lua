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
          template = { annotation_convention = "numpydoc" },
        },
      },
    },
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
  { import = "astrocommunity.markdown-and-latex.vimtex" },
  { import = "astrocommunity.lsp.lsp-signature-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },
  { import = "astrocommunity.color.nvim-highlight-colors" },
  { import = "astrocommunity.media.image-nvim"},
  { import = "astrocommunity.note-taking.obsidian-nvim" },
  {
    "epwalsh/obsidian.nvim",
    event = { "BufReadPre " .. vim.fn.expand "~" .. "/Sync/Documents/sangrah/*.md" },
    opts = {
      dir = vim.env.HOME .. "/Sync/Documents/sangrah",
    },
  },
}
