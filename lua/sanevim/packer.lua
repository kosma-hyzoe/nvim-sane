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
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  requires = { {'nvim-lua/plenary.nvim'} }
}
end)

