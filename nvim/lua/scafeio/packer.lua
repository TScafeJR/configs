vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

use {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

use ({ "catppuccin/nvim", as = "catppuccin", config = function() vim.cmd("colorscheme catppuccin") end })

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('theprimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')

use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

use('hrsh7th/nvim-compe')
use('m4xshen/autoclose.nvim')
use('f-person/git-blame.nvim')
use("folke/zen-mode.nvim")

use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

use {
  "klen/nvim-test",
  config = function()
    require('nvim-test').setup()
  end
}

use 'nvim-tree/nvim-web-devicons' -- OPTIONAL: for file icons
use 'romgrk/barbar.nvim'

use {
	'neoclide/coc.nvim',
	 branch = 'release'
}

use 'mfussenegger/nvim-dap'

use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }

use 'jose-elias-alvarez/null-ls.nvim'

use 'folke/neodev.nvim' 

use 'hrsh7th/vim-vsnip'

use 'hrsh7th/vim-vsnip-integ'

use 'mfussenegger/nvim-lint'

require('packer').use { 'mhartington/formatter.nvim' }

end)
