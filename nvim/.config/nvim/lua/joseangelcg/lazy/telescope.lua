return{
    "nvim-telescope/telescope.nvim",
    tag = '0.1.8',
    dependencies = "nvim-lua/plenary.nvim",

    config = function ()
        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>Pf', function()
            builtin.find_files( { hidden = true, no_ignore = true })
        end, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Git find files' })
        vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Search for text' })
        vim.keymap.set('n', '<leader>pS', builtin.grep_string, { desc = 'Search for text under cursor' })
        vim.keymap.set('n', '<leader>pb', builtin.buffers, {desc = 'Current buffers'})
        vim.keymap.set('n', '<leader>ph', builtin.help_tags, {desc = 'Search help'})
        vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {desc = 'Search help'})
    end
}
