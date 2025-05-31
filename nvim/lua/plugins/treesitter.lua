return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    ensure_installed = {
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
        "python",
        "regex",
        "rust",
        "ruby",
        "sql",
        "typescript"
    },
    sync_install = true,
    highlight = {
        enable = true,
    }
}
