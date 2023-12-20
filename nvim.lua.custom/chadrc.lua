---@type ChadrcConfig
local M = {}
M.ui = {
    theme = 'catppuccin',
    theme_toggle = { "catppuccin", "ayu_light" },

    transparency = true,
}

M.ui.extended_integrations = {'alpha'}
M.plugins = 'custom.plugins'
return M
