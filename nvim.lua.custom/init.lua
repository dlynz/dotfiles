vim.deprecate = function() end
vim.opt.colorcolumn = "80"

vim.keymap.set("n", "<C-d>", "<C-d> zz")
vim.keymap.set("n", "<C-u>", "<C-u> zz")

vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("i", "jk", "<ESC>", { silent = true })

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

vim.opt.relativenumber = true
vim.opt.conceallevel = 2

vim.diagnostic.config({ virtual_text = false })

vim.api.nvim_create_autocmd("FileType", {
    pattern = "assembly",
    callback = function()
        vim.opt.expandtab = true
        vim.opt.shiftwidth = 8
        vim.opt.smartindent = true
        vim.opt.tabstop = 8
        vim.opt.softtabstop = 8
    end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "typescriptreact",
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.smartindent = true
    vim.opt.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascriptreact",
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.smartindent = true
    vim.opt.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.smartindent = true
    vim.opt.expandtab = false
  end,
})

