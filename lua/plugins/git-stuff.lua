return {
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = function()
            vim.keymap.set("n", "<leader>gs", ":Neogit<CR>", { silent = true, noremap = true })
            vim.keymap.set("n", "<leader>gc", ":Neogit commit<CR>", { silent = true, noremap = true })
            vim.keymap.set("n", "<leader>gp", ":Neogit pull<CR>", { silent = true, noremap = true })
            vim.keymap.set("n", "<leader>gP", ":Neogit push<CR>", { silent = true, noremap = true })
            vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { silent = true, noremap = true })
            vim.keymap.set("n", "<leader>gB", ":G blame<CR>", { silent = true, noremap = true })
        end
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()

            vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {})
        end
    }
}
