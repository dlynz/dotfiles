local plugin = {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  init = function()
    vim.g['vimtex_view_method'] = 'zathura' -- for variant without xdotool to avoid errors in wayland
  end
}

return plugin
