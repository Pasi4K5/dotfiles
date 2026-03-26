return {
    "mason-org/mason.nvim",
    opts = {
        ensure_installed = {
            -- C++
            "clangd",
            "neocmakelsp",
            -- Java
            "jdtls",
            -- Markdown
            "marksman",
            -- Rust
            "rust-analyzer",
        },
    },
}

