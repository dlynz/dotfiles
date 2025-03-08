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
                "sqlls",
                "tailwindcss-language-server",
                "jdtls",
                "typescript-language-server",
                "eslint-lsp",
                "rust-analyzer",
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
