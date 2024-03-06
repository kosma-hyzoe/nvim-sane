vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use('wbthomason/packer.nvim', { cond = not vim.g.vscode })
    use('tpope/vim-surround', { cond = not vim.g.vscode })
    use('tpope/vim-commentary', { cond = not vim.g.vscode })
    use('tpope/vim-fugitive', { cond = not vim.g.vscode })
    use('terryma/vim-multiple-cursors', { cond = not vim.g.vscode })
    use('machakann/vim-highlightedyank', { cond = not vim.g.vscode })
    use('lambdalisue/suda.vim', { cond = not vim.g.vscode })
    use('navarasu/onedark.nvim', { cond = not vim.g.vscode })
    use('godlygeek/tabular', { cond = not vim.g.vscode })
    use('preservim/vim-markdown', { cond = not vim.g.vscode })
    use('rhysd/vim-grammarous')
    use('vimwiki/vimwiki')

    use('nvim-treesitter/nvim-treesitter-context', { cond = not vim.g.vscode })
    use('nvim-treesitter/playground', { cond = not vim.g.vscode })
    use { 'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install')
                .update({ with_sync = true })
            ts_update()
        end,
        cond = not vim.g.vscode
    }

    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }, cond = not vim.g.vscode
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' }
        }, cond = not vim.g.vscode
    }
end)
