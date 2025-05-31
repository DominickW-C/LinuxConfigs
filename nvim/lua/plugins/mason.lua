return {
    "mason-org/mason.nvim",
    build = ":MasonUpdate",
    opts_extended = { "ensure_installed" },
    opts = {
        ensure_installed = {
            "python-lsp-server",
            "jdtls",
            "bash-language-server",
            "typescript-language-server"
        } 
    }
}
