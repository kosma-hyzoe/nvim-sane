-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Staples
  use 'tpope/vim-surround'
  use 'tpope/vim-commentary'
  use 'terryma/vim-multiple-cursors'
  use 'machakann/vim-highlightedyank'
  use 'lambdalisue/suda.vim'
  use 'vimwiki/vimwiki'
  -- Recents
  use 'navarasu/onedark.nvim'
  use('tpope/vim-fugitive')
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }
end)

