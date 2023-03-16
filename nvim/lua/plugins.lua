local status, packer = pcall(require, 'packer')
if (not status) then
    print("Packer is not installed!")
    return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    } -- Colorscheme
    use 'hoob3rt/lualine.nvim' -- Statusline
    use 'neovim/nvim-lspconfig' -- Lspconfig
    use 'nvim-tree/nvim-tree.lua' -- File Explorer
    use 'L3MON4D3/LuaSnip' -- Snippets
    use 'williamboman/mason.nvim' -- Mason
    use 'williamboman/mason-lspconfig.nvim'
    use 'hrsh7th/cmp-nvim-lsp' -- Completion for lsp
    use 'hrsh7th/nvim-cmp' -- Completion
    use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer word
    use 'onsails/lspkind-nvim' -- vscode-like pictograms
    use 'norcalli/nvim-colorizer.lua'
end)
