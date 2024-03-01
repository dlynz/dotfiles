local plugins = {
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "clang-format",
                "python-lsp-server",
                "css-lsp",
                "html-lsp",
                "tailwindcss-language-server",
                "jdtls",
                "typescript-language-server",
                "eslint-lsp",
                "bash-language-server",
            }
        }
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end,
    },
}

return plugins
