-- check packer.nivm is installed or not
local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
	use {
		'williamboman/mason-lspconfig.nvim', 
		requires = {{'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'}}
	}
	use {'neovim/nvim-lspconfig', 'williamboman/mason.nvim'}
    use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
    }
    use "EdenEast/nightfox.nvim"
end)
