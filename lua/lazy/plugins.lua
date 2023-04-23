return {
  {
    -- Theme
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    lazy = false,
    init = function()
      vim.cmd([[colorscheme rose-pine]])
    end
  },
  {
    'williamboman/mason.nvim',
    build = ':MasonUpdate',
    dependencies = {
      'neovim/nvim-lspconfig',
      'williamboman/mason-lspconfig.nvim'
    }
  },
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      "nvim-lua/plenary.nvim",
      "BurntSushi/ripgrep",
      "sharkdp/fd"
    }
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  { "jay-babu/mason-null-ls.nvim" },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate'
  },
  {
    'hrsh7th/nvim-cmp',
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'hrsh7th/cmp-nvim-lua' },
      { 'L3MON4D3/LuaSnip' },
    }
  },
  { 'j-hui/fidget.nvim' },
  { 'numToStr/Comment.nvim' },
  { 'nvim-tree/nvim-tree.lua' },
  { 'romgrk/barbar.nvim' },
  {
    'tami5/lspsaga.nvim',
    event = 'LspAttach',
    init = function()
        require('lspsaga').setup()
    end
  },
  { 'voldikss/vim-floaterm' },
  { 'dhruvasagar/vim-table-mode' },
  { 'iamcco/markdown-preview.nvim' },
  { 'jiangmiao/auto-pairs' }
}
