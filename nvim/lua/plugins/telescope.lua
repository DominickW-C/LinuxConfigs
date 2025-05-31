return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        vim.keymap.set("n", "F", require("telescope.builtin").find_files)
        vim.keymap.set("n", "G", require("telescope.builtin").live_grep)
    end
}
