return {
    {
        "neovim/nvim-lspconfig",
	config = function()
	    vim.lsp.enable("lua_ls")
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {
                                "vim",
                            },
                        },
                    },
                },
            })

	    vim.lsp.enable("texlab")
	    vim.lsp.enable("rust_analyzer")
        end,
    }
}

