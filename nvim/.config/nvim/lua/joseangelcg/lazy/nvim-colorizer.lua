return {
    'norcalli/nvim-colorizer.lua',
    enabled = true,
    event = 'BufReadPost',
    config = function ()
        require('colorizer').setup()
    end
}
