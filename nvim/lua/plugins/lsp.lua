return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("lspconfig").pylsp.setup {} --python lsp   
            require("lspconfig").bashls.setup {} --bash lsp   
            require("lspconfig").ts_ls.setup {} --ts and (kinda) js`` lsp   
            require("lspconfig").jdtls.setup {} -- jaa lsp
        end
    }
}
