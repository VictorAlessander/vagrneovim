-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({"mg979/vim-visual-multi", branch = "master"})

	use({ "catppuccin/nvim", as = "catppuccin" })

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" }, { "nvim-telescope/telescope-live-grep-args.nvim" } },
	})

	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

	-- use "folke/tokyonight.nvim"

	use("tpope/vim-fugitive")

	use({
		"VonHeikemen/lsp-zero.nvim",
		branch = "v3.x",
		requires = {
			--- Uncomment these if you want to manage the language servers from neovim
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "rafamadriz/friendly-snippets" },

			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "L3MON4D3/LuaSnip" },
		},
	})

	use("tpope/vim-sleuth")

	use("windwp/nvim-ts-autotag")

	use("lewis6991/gitsigns.nvim")

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	use("RRethy/nvim-base16")

	use({
		"nvimtools/none-ls.nvim",
		requires = { { "nvimtools/none-ls-extras.nvim" } },
	})

	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use("folke/which-key.nvim")
end)
