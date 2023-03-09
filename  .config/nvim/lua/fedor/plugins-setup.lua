-- Install Packer
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
    return 
end 

return packer.startup(function(use)
    -- Packages
    use ("wbthomason/packer.nvim")
    use ("ellisonleao/gruvbox.nvim")
    use ("nvim-tree/nvim-tree.lua")
    
    use ("kyazdani42/nvim-web-devicons")
    use ("nvim-lualine/lualine.nvim")
   
    use ("hrsh7th/nvim-cmp")
    use ("hrsh7th/cmp-buffer")
    use ("hrsh7th/cmp-path")

    use ("L3MON4D3/LuaSnip")
    use ("saadparwaiz1/cmp_luasnip")
    use ("rafamadriz/friendly-snippets")

    use ("williamboman/mason.nvim")
    use ("williamboman/mason-lspconfig.nvim")

    use ("neovim/nvim-lspconfig")

    use ("hrsh7th/cmp-nvim-lsp")
    use ({ "glepnir/lspsaga.nvim", brach = "main" })
    use ("onsails/lspkind.nvim")

    if packer_bootstrap then
        require("packer").sync()
    end
end)
