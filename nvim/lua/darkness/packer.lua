-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  } 

  -- treesitter, code highlightig
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {                                      -- Optional
		  'williamboman/mason.nvim',
		  run = function()
			  pcall(vim.cmd, 'MasonUpdate')
		  end,
	  },
	  {'williamboman/mason-lspconfig.nvim'}, -- Optional

	  -- Autocompletion
	  {'hrsh7th/nvim-cmp'},         -- Required
	  {'hrsh7th/cmp-nvim-lsp'},     -- Required
	  {'hrsh7th/cmp-buffer'},       -- Optional
	  {'hrsh7th/cmp-path'},         -- Optional
	  {'saadparwaiz1/cmp_luasnip'}, -- Optional
	  {'hrsh7th/cmp-nvim-lua'},     -- Optional

	  -- Snippets
	  {'L3MON4D3/LuaSnip'}, -- Required
	  --{'rafamadriz/friendly-snippets'}, -- Optional
  }

}

-- vim cheatsheet plugin, see :Cheetsheet
use {
	'sudormrfbin/cheatsheet.nvim',
	requires = {
		{'nvim-telescope/telescope.nvim'},
		{'nvim-lua/popup.nvim'},
		{'nvim-lua/plenary.nvim'},
	}
}

-- latex editor, vimtex
use {
	'lervag/vimtex', as = 'vimtex',
	config = function ()
		vim.g.vimtex_complier_progname= '/usr/bin/nvr'
		-- add bibtex
		vim.g.
		vim.g.vimtex_view_general_viewer = 'okular'
		vim.g.tex_comment_nospell = 1
		vim.g.vimtex_view_method="zathura"
		vim.g.vimtex_quickfix_mode = 0
		-- hide latex code
		vim.opt.conceallevel = 1
		vim.g.tex_conceal = "abdmg"
		-- spelling
		vim.opt_local.spell = true
		vim.spell.spellang = en_us
	end,
	ft = 'tex'
}
use{
	'PatrBal/vim-textidote'
}
use{
	'tpope/vim-fugitive'
}
end)

