return {
    {
        "yardnsm/nvim-base46",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        'raddari/last-color.nvim',
        config = function()
            -- default theme as a backup, `recall()` can return `nil`.
            local theme = require('last-color').recall() or 'default'
            vim.cmd.colorscheme(theme)
        end
    },
}
