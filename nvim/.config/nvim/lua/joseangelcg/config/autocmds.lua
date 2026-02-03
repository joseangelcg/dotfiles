-- LSP actions and remaps
-- This is where you enable features that only work
-- if there is a language server active in the file
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = {buffer = event.buf}

    vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
  end,
})

-- Delete trailing backspaces from files being written
vim.api.nvim_create_autocmd('BufWritePre',{
    group = vim.api.nvim_create_augroup("PotterDelTrail",{}),
    pattern = '*',
    command = [[%s/\s\+$//e]]
})

-- Highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost',{
    group = vim.api.nvim_create_augroup("PotterYankHi",{}),
    pattern = '*',
    callback = function ()
        vim.highlight.on_yank({
            higroup = 'Substitute',
            timeout = 100
        })

    end
})

-- Configure terminal at open
vim.api.nvim_create_autocmd('TermOpen',{
    group = vim.api.nvim_create_augroup('PotterTermOp',{}),
    callback = function ()
        vim.opt.number = false
        vim.opt.relativenumber = false
        vim.cmd("startinsert")

        vim.keymap.set("t", '<Esc><Esc>', "<C-\\><C-n>")
    end
})


-- Disable tab expansion to spaces for *.go files
vim.api.nvim_create_autocmd('BufEnter',{
    group = vim.api.nvim_create_augroup('PotterGoTabs',{}),
    pattern = '*.go',
    callback = function ()
        vim.opt.expandtab = false
    end
})
