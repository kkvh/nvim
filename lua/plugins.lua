local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    'numToStr/Comment.nvim',
    opts = {}
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'nvim-telescope/telescope.nvim',
	tag = '0.1.3',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {'neovim/nvim-lspconfig'},             -- LSP configurations
  {'williamboman/mason.nvim'},           -- Installer for external tools
  {'williamboman/mason-lspconfig.nvim'}, -- mason extension for lspconfig
  {'hrsh7th/nvim-cmp'},                  -- Autocomplete engine
  {'hrsh7th/cmp-buffer'},                -- Completion source for buffer
  {'hrsh7th/cmp-nvim-lsp'},              -- Completion source for LSP
  {'L3MON4D3/LuaSnip'},                  -- Snippet engine
  {'tpope/vim-surround'},
  {'tpope/vim-fugitive'},
  {'tpope/vim-rhubarb'},
  {'kkvh/vim-docker-tools'},
  {
    'prettier/vim-prettier',
	build = 'npm install'
  },
  {'rebelot/kanagawa.nvim'},
})

--kanagawa.nvim
require('kanagawa').load('wave')

--lualine.nvim
require('lualine').setup({
  options = {
    theme = 'powerline'
  }
})

if vim.fn.has('mac') then
  require('lualine').setup({
    sections = {
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { 'encoding', { 'fileformat', symbols = { unix = '' } }, 'filetype' },
    }
  })
end

--rhubarb.vim
vim.g.github_enterprise_urls = {'https://github.dowjones.net'}
