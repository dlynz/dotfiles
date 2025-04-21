local plugins = {
    "cbochs/grapple.nvim",
    opts = {
        scope = "git", -- also try out "git_branch"
    },
    event = { "BufReadPost", "BufNewFile" },
    cmd = "Grapple",
    keys = {
        { "<leader>t", "<cmd>Grapple toggle<cr>", desc = "Grapple toggle tag" },
        { "<leader>s", "<cmd>Grapple toggle_tags<cr>", desc = "Grapple open tags window" },
        { "<leader>j", "<cmd>Grapple cycle_tags next<cr>", desc = "Grapple cycle next tag" },
        { "<leader>k", "<cmd>Grapple cycle_tags prev<cr>", desc = "Grapple cycle previous tag" },
        { "<leader>2", "<cmd>Grapple select index=1<cr>", desc = "Select first tag" },
        { "<leader>3", "<cmd>Grapple select index=2<cr>", desc = "Select second tag" },
        { "<leader>4", "<cmd>Grapple select index=3<cr>", desc = "Select third tag" },
    },
}

return plugins
