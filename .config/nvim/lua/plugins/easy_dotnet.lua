return {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = {
        { "nvim-lua/plenary.nvim", lazy = false },
        { "nvim-telescope/telescope.nvim", lazy = false },
    },
    config = function()
        require("easy-dotnet").setup()
    end,
}

