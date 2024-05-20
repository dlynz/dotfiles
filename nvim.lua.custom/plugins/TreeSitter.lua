local plugin = {
    'nvim-treesitter/nvim-treesitter',
    opts = function()
        opts = require "plugins.configs.treesitter"
        opts.ensure_installed = {
            "lua",
            "javascript",
            "typescript",
            "tsx",
            "c",
            "python",
            "java",
        }
        return opts
    end
}

return plugin

