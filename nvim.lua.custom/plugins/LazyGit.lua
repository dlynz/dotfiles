local plugins = {
    {
        "kdheepak/lazygit.nvim",
    	cmd = {
    		"LazyGit",
    		"LazyGitConfig",
    		"LazyGitCurrentFile",
    		"LazyGitFilter",
    		"LazyGitFilterCurrentFile",
    	},
        init = function ()
            local wk = require("which-key")
            wk.register({
                ["<leader>lg"] = { ":LazyGit<CR>", "LazyGit" },
            }, { mode = "n" })
        end,
            -- optional for floating window border decoration
            dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
}

return plugins
