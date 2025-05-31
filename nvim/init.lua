require("config.lazy")

vim.cmd.colorscheme "catppuccin-frappe"
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set expandtab")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set number")
vim.cmd("set title")

require("mason").setup()
require("lualine").setup {
    options = {
        theme = "catppuccin"
    }
}

vim.diagnostic.config({virtual_text = true})
