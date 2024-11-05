local plugin = {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    config = function()
        require('tiny-inline-diagnostic').setup()
    end
}

return plugin
