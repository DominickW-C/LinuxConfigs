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
require("lualine").setup()

--require("toggleterm").setup()
-- needed to be in the plugin file thanks chat
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

vim.cmd('autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()')

vim.diagnostic.config({virtual_text = true})


--vim.api.nvim_create_autocmd('FileType', {
--  pattern = { 
--    "bash",
--    "c",
--    "cpp",
--    "cmake",
--    "c_sharp",
--    "lua",
--    "java",
--    "css",
--    "dart",
--    "dockerfile",
--    "go",
--    "html",
--    "javascript",
--    "json",
--    "json5",
--    "kotlin",
--    "markdown",
--    "php",
--    "python",
--    "regex",
--    "rust",
--    "ruby",
--    "sql",
--    "typescript"
--  },
--
--  callback = function() vim.treesitter.start() end,
--})

require('nvim-treesitter').install { 
    'rust', 
    'javascript', 
    'java', 
    'go', 
    'html', 
    'css', 
    'c', 
    'cpp', 
    'python', 
    'lua', 
    'dart', 
    'typescript', 
    'c_sharp', 
    'cmake', 
    'bash', 
    'json', 
    'php' 
}
