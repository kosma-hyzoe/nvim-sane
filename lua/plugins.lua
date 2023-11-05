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

    use('nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate', cond = not vim.g.vscode })
    use('nvim-treesitter/nvim-treesitter-context', { cond = not vim.g.vscode })
    use('nvim-treesitter/playground', { cond = not vim.g.vscode })

    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }, cond = not vim.g.vscode
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }, cond = not vim.g.vscode
    }
end)
