return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            --vim.lsp.config("pylsp")
            --vim.lsp.config("bashls")
            --vim.lsp.config("ts_ls")
            --vim.lsp.config("jdtls")
            vim.lsp.enable("pylsp")
            vim.lsp.enable("bashls")
            vim.lsp.enable("ts_ls")
            vim.lsp.enable("jdtls")
            --vim.lsp.config("phpactor")
            --vim.lsp.enable("phpactor")
            vim.lsp.enable("intelephense")
            vim.lsp.enable("omnisharp")

        end
    }
}
