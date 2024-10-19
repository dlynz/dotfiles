---@type ChadrcConfig
local M = {}
M.ui = {
    theme = 'catppuccin',
    tabufline = {
    enabled= false
    },
    transparency = false,
}

M.ui.extended_integrations = {'alpha'}
M.plugins = 'custom.plugins'
return M
