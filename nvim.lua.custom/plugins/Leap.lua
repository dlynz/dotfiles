local plugins = {
    {
        "ggandor/leap.nvim",
        lazy = false,
        dependencies = { "tpope/vim-repeat" },
        opts = function()
            require('leap').add_default_mappings()
        end,
    },
}

return plugins
