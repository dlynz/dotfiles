local plugins = {
    {
        "andweeb/presence.nvim",
        lazy = true,
    },
    {
        "folke/todo-comments.nvim",
        lazy = false,
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = { }
    },
    {
        "ThePrimeagen/vim-be-good",
        lazy = true,
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = true,
    },
}

return plugins
