local plugin = {
  'stevearc/oil.nvim',
    lazy=false,
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup()
    end
}

return plugin
