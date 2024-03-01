local plugins = {
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- required by telescope
            "folke/trouble.nvim",
        },
        config = function()
            require("chatgpt").setup()
        end
    },
}

return plugins
