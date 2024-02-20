return {
    "folke/tokyonight.nvim",
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },
    {
        "nvim-lua/plenary.nvim",
        name = "plenary"
    },
    { "nvim-telescope/telescope.nvim",
        dependencies = {
            "plenary", 
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "folke/trouble.nvim",
        config = function()
            -- TODO
            require("trouble").setup {
                icons = false,
            }
        end
    },
      "mbbill/undotree",
      "tpope/vim-fugitive",
      "folke/zen-mode.nvim",
      --"github/copilot.vim",
      "eandrju/cellular-automaton.nvim",
      "laytan/cloak.nvim",
      "theprimeagen/harpoon",
      "theprimeagen/refactoring.nvim",
      "theprimeagen/vim-be-good",
      "epwalsh/obsidian.nvim"
}
--[[
{
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
--]]
