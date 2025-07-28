return {
    { -- Show CSS Colors
        'brenoprata10/nvim-highlight-colors',
        config = function()
            require('nvim-highlight-colors').setup({})
        end
    },

    { 'numToStr/Comment.nvim' },

    {
        "sphamba/smear-cursor.nvim",
        opts = { smear_insert_mode = false },
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    }
}
