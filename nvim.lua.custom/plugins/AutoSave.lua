local plugins = {
    "0x00-ketsu/autosave.nvim",
    event = { "InsertLeave", "TextChanged" },
    config = function()
    require('autosave').setup {
        prompt_style = 'stdout',
        prompt_message = function()
          return ''
        end,
    }
    end
}

return plugins

