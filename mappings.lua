-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    L = {
      function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
      desc = "Next buffer",
    },
    H = {
      function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
      desc = "Previous buffer",
    },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>r"] = { name = "Code Runner" },
    ["<leader>rr"] = {":SnipRun<cr>", desc = "Run selection"},
    ["<leader>rc"] = {":SnipClose<cr>", desc = "Close window"},
    ["<leader>rR"] = {":SnipReset<cr>", desc = "Reset Snip"},
    ["<leader>ri"] = {":SnipInfo<cr>", desc = "Show Snip info"},
    ["<leader>N"] = { name = "Neorg"},
    ["<leader>Nw"] = {":Neorg workspace", desc = "Switch Neorg workspace"},
    ["<leader>N:"] = {":Neorg ", desc = "Neorg cmd"},
    ["<leader>o"] = { ":Oil<cr>", desc = "Open folder in Oil" },
    ["<leader>m"] = { ":lua require('nabla').toggle_virt()<cr>", desc = "Toggle Nabla virtual lines" },
    ["<leader>M"] = { ":lua require('nabla').popup()<cr>", desc = "Toggle Nabla popup" },
  },
  v = {
    ["<leader>r"] = { name = "Code Runner" },
    ["<leader>rr"] = {":SnipRun<cr>", desc = "Run selection"},
    ["J"] = {":m '>+1<cr>gv+gv"},
    ["K"] = {":m '>-2<cr>gv+gv"},
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
