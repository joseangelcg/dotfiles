return{
    "neovim/nvim-lspconfig",
    dependencies = {
        -- Mason install
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        --Autocompletion
        "hrsh7th/nvim-cmp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        --Snippets
        "hrsh7th/cmp-vsnip",
        "hrsh7th/vim-vsnip",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },

    config = function ()
        local cmp = require('cmp')
        local cmp_lsp = require('cmp_nvim_lsp')

        local capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        cmp_lsp.default_capabilities())

        require('mason').setup({})
        require('mason-lspconfig').setup({

            --lenguage servers
            ensure_installed = {
                'lua_ls',
                'rust_analyzer',
                -- 'gopls',
                --'jedi-language-server', install manually
                --'clangd'
                },

            handlers = {
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        capabilities = capabilities,
                    })
                end,
            },
        })

        require('luasnip.loaders.from_vscode').lazy_load()

        local cmp_select = { behavior = cmp.SelectBehavior.Select }

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
                ['<C-y>'] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
            }),
            sources = cmp.config.sources({
                {name = 'nvim_lsp'},
                {name = 'luasnip'},
            },{
                {name = 'buffer'},
            }),
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },

            preselect = 'item',
            completion = {
                completeopt = 'menu,menuone,noinsert'
            }
        })
    end
}
