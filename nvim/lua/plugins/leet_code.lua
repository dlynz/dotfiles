local plugins = {
    {
        "kawre/leetcode.nvim",
        lazy = false,
        build = ":TSUpdate html",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- required by telescope
            "MunifTanjim/nui.nvim",

            -- optional
            "nvim-treesitter/nvim-treesitter",
            "rcarriga/nvim-notify",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            ---@type lc.lang
            lang = "python3"
        },
        config = function()
            require("leetcode").setup()
        end
    }
}

return plugins
