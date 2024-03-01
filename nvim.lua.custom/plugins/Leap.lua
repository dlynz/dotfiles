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

-- set different highlight colour
vim.api.nvim_set_hl(0, 'LeapLabelPrimary', { bg = '#d5c5fc', fg = 'black' })

return plugins
