require("config.lazy")

vim.cmd.colorscheme "catppuccin-frappe"
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set expandtab")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set number")
vim.cmd("set title")

local highlight = {
    "RainbowGreen",
    "RainbowBlue",
    "RainbowViolet",
    "RainbowCyan",
    "RainbowYellow",
    "RainbowOrange",
    "RainbowRed",
}

local hooks = require "ibl.hooks"
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
    vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#a6d189" })
    vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#8caaee" })
    vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#babbf1" })
    vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#81c8be" })
    vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#e5c890" })
    vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#ef9f76" })
    vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#ea999c" })
end)

require("ibl").setup {
    indent = {
        highlight = highlight,
        char = "▏"
    },
    scope = {
        show_start = false,
	    show_end = false
    }
}
require("mason").setup()
require("lualine").setup {
    options = {
        theme = "catppuccin"
    }
}

vim.diagnostic.config({virtual_text = true})

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 
    "bash",
    "c",
    "cpp",
    "cmake",
    "c_sharp",
    "lua",
    "java",
    "css",
    "dart",
    "dockerfile",
    "go",
    "html",
    "javascript",
    "json",
    "json5",
    "kotlin",
    "markdown",
    "php",
    "python",
    "regex",
    "rust",
    "ruby",
    "sql",
    "typescript"
  },

  callback = function() vim.treesitter.start() end,
})

