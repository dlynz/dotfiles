local nvlsp = require "nvchad.configs.lspconfig"
local lspconfig = require "lspconfig"

nvlsp.defaults() -- loads nvchad's defaults

local servers = {
    "tailwindcss",
    "sqlls",
    "ts_ls",
    "jdtls",
    "eslint",
    "clangd",
    "cssls",
    "html",
    "bashls",
    "rust_analyzer"
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

-- Without the loop, you would have to manually set up each LSP 
-- 
-- lspconfig.html.setup {
--   on_attach = nvlsp.on_attach,
--   capabilities = nvlsp.capabilities,
-- }
