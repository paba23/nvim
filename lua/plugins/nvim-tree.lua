return {
  { 
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    depencdencies = {
      "nvim-tree/nvim-web-devicons",
     },
    config = function()
      local  nvim_tree = require("nvim-tree")
      vim.keymap.set('n', '<C-n>', ':NvimTreeFocus<CR>')
      nvim_tree.setup()
    end
 }
}

