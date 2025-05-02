return {
  "nvim-neo-tree/neo-tree.nvim",
  bracnch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set('n', '<C-N>', ':Neotree filesystem reveal left<CR>', {})
  end
}
