local tree_api = require("nvim-tree.api").tree

function tree_cwd()
    tree_api.toggle({ path = vim.fn.getcwd() })
end

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>x", tree_cwd)

