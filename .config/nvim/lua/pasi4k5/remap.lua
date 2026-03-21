local Terminal = require("toggleterm.terminal").Terminal
local tree_api = require("nvim-tree.api").tree
local term = require("toggleterm")

vim.g.mapleader = " "

vim.keymap.set("n", "<leader>x", function ()
    tree_api.toggle({ path = vim.fn.getcwd() })
end)

local lg = Terminal:new({
    cmd = "lazygit",
    hidden = true,
    display_name = "git",
    direction  = "float",
    float_opts = {
        width = function ()
            return vim.fn.winwidth(0)
        end,
        height = function ()
            return vim.fn.winheight(0) - 1
        end,
    },
})

function _lg_toggle()
    lg:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>lg", "<cmd>lua _lg_toggle()<CR>", {noremap = true, silent = true})

term.setup{}

