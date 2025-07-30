require('config.options')
require('config.keybinds')
require('config.lazy')

-- got this from folowing tutorial by ramboe
-- I think it's needed for debugging UTs?
require("neotest").setup({
    adapters = {
        require("neotest-dotnet")
    }
})
