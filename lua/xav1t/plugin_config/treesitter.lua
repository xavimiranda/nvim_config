require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {
        "lua", 
        "vim", 
        "vimdoc", 
        "query",
        "python",
        "javascript",
        "typescript"
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
    }
}
