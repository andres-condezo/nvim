local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
	git = {
		clone_timeout = 300, -- Timeout, in seconds, for git clones
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use({ "wbthomason/packer.nvim", commit = "6afb67460283f0e990d35d229fd38fdc04063e0a" }) -- Have packer manage itself
	use({ "nvim-lua/plenary.nvim", commit = "4b7e52044bbb84242158d977a50c4cbcd85070c7" }) -- Useful lua functions used by lots of plugins
	use({ "ahmedkhalf/project.nvim", commit = "628de7e433dd503e782831fe150bb750e56e55d6" })
	use({ "lewis6991/impatient.nvim", commit = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" })

	use({ "numToStr/Comment.nvim", commit = "97a188a98b5a3a6f9b1b850799ac078faa17ab67" })
	use({ "JoosepAlviste/nvim-ts-context-commentstring", commit = "32d9627123321db65a4f158b72b757bcaef1a3f4" })

	use("kevinhwang91/rnvimr")
	use("stevearc/oil.nvim")

	use({ "kyazdani42/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" })
	use({ "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" })
	use({ "akinsho/bufferline.nvim", commit = "83bf4dc7bff642e145c8b4547aa596803a8b4dc4" })
	use({ "nvim-lualine/lualine.nvim", commit = "a52f078026b27694d2290e34efa61a6e4a690621" })
	use({ "goolord/alpha-nvim", commit = "0bb6fc0646bcd1cdb4639737a1cee8d6e08bcc31" })
	use({ "lukas-reineke/indent-blankline.nvim", commit = "db7cbcb40cc00fc5d6074d7569fb37197705e7f6" })
	use({ "windwp/nvim-autopairs", commit = "4fc96c8f3df89b6d23e5092d31c866c53a346347" }) -- Autopairs, integrates with both cmp and treesitter
	use({ "moll/vim-bbye", commit = "25ef93ac5a87526111f43e5110675032dbcacf56" })
	use({ "akinsho/toggleterm.nvim", commit = "2a787c426ef00cb3488c11b14f5dcf892bbd0bda" })
	use("folke/which-key.nvim")
	use("petertriho/nvim-scrollbar")
	use("mg979/vim-visual-multi")
	use("farmergreg/vim-lastplace")
	use("Shatur/neovim-session-manager")
	use("rcarriga/nvim-notify")
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })

	use("wellle/targets.vim")

	-- motion
	-- use "phaazon/hop.nvim"
	use("ggandor/leap.nvim")
	use("ggandor/leap-ast.nvim")
	use("ggandor/flit.nvim")
	use("ggandor/leap-spooky.nvim")
	-- end

	use({
		"VonHeikemen/fine-cmdline.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})
	use({
		"VonHeikemen/searchbox.nvim",
		requires = {
			{ "MunifTanjim/nui.nvim" },
		},
	})

	use({
		"anuvyklack/hydra.nvim",
		requires = "anuvyklack/keymap-layer.nvim", -- needed only for pink hydras
	})

	use("nacro90/numb.nvim")
	use("csscomb/vim-csscomb")
	use("wakatime/vim-wakatime")
	use("ThePrimeagen/harpoon")
	use("jremmen/vim-ripgrep")
	use("jacquesbh/vim-showmarks")

	-- use 'sunjon/shade.nvim'
	use("0x100101/Shade.nvim")
	use("tjdevries/colorbuddy.nvim")
	use("onsails/lspkind.nvim")

	-- Code runner --
	use({ "metakirby5/codi.vim" })
	-- use({ "michaelb/sniprun", run = "bash ./install.sh" })
	use({ "is0n/jaq-nvim" })

	-- Markdown --
	-- use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })
	use("saimo/peek.nvim")

	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
		ft = { "markdown" },
	})
	use("mzlogin/vim-markdown-toc")
	use({ "godlygeek/tabular" })
	use({
		"preservim/vim-markdown",
		ft = {
			"markdown",
		},
	})
	use({ "dhruvasagar/vim-table-mode" })
	-- use("lukas-reineke/headlines.nvim")

	use("zhaozg/vim-diagram")
	use("aklt/plantuml-syntax")

	-- VimWiki
	use("vimwiki/vimwiki")
	use("ElPiloto/telescope-vimwiki.nvim")
	use("mattn/calendar-vim")
	-- use("tools-life/taskwiki")
	use("andres-condezo/taskwiki")
	use("farseer90718/vim-taskwarrior")
	-- use("ribelo/taskwarrior.nvim")
	-- use("andres-condezo/taskwarrior.nvim")
	use("Jxstxs/conceal.nvim")
	use("epwalsh/obsidian.nvim")

	use("ekickx/clipboard-image.nvim")

	-- latex
	use("lervag/vimtex")
	use("sotte/presenting.vim")
	use("xuhdev/vim-latex-live-preview")

	-- other
	use("Sanhajio/synonyms.vim")
	use("voldikss/vim-translator")
	use("folke/paint.nvim")
	use({
		'Wansmer/treesj',
		requires = { 'nvim-treesitter/nvim-treesitter' },
		config = function()
			require('treesj').setup({--[[ your config ]]})
		end,
	})

	use({ "folke/zen-mode.nvim" })
	use("Pocco81/TrueZen.nvim")
	use({ "folke/twilight.nvim" })
	use("junegunn/goyo.vim")

	-- MORE --
	use("psliwka/vim-smoothie")
	use("sindrets/winshift.nvim")
	use("jlanzarotta/bufexplorer")
	use({
		"AndrewRadev/splitjoin.vim",
		keys = {
			{ "n", "gJ" },
			{ "n", "gS" },
		},
	})
	use({ "andymass/vim-matchup" })
	use({ "AckslD/nvim-neoclip.lua" })
	use("ziontee113/syntax-tree-surfer")
	use({ "tpope/vim-repeat" })
	use({ "windwp/nvim-spectre" })
	use({ "kmonad/kmonad-vim" })
	-- use { 'dense-analysis/ale' }
	-- use({
	-- 	"NTBBloodbath/rest.nvim",
	-- 	requires = { "nvim-lua/plenary.nvim" },
	-- })
	use({ "https://github.com/tpope/vim-dotenv" })
	-- use({ "tpope/vim-dadbod" })
	-- use({ "kristijanhusak/vim-dadbod-ui", requires = {
	-- 	"tpope/vim-dadbod",
	-- 	"tpope/vim-dotenv",
	-- } })
	use({ "ziontee113/color-picker.nvim" })
	use({ "norcalli/nvim-colorizer.lua" })
	use { 'fgheng/winbar.nvim' }
	-- use({
	--   "utilyre/barbecue.nvim",
	--   tag = "*",
	--   requires = {
	--     "SmiteshP/nvim-navic",
	--     "nvim-tree/nvim-web-devicons", -- optional dependency
	--   },
	--   after = "nvim-web-devicons", -- keep this if you're using NvChad
	--   config = function()
	--     require("barbecue").setup()
	--   end,
	-- })
	-- use ("SmiteshP/nvim-navic")

	use("nvim-treesitter/nvim-treesitter-context")

	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
	})
	use { 'anuvyklack/animation.nvim', 
		 requires = 'anuvyklack/middleclass'
	}
	use ('ElPiloto/significant.nvim')

	-- Ruby / Rails
	use("kana/vim-textobj-user")
	use("https://github.com/whatyouhide/vim-textobj-erb")
	use("vim-ruby/vim-ruby")
	use("tpope/vim-rails")
	use({ "ngmy/vim-rubocop" })

	-- React
	use("tpope/vim-surround")
	-- use { 'mattn/emmet-vim' }
	-- use { 'jelera/vim-javascript-syntax' }
	-- use { 'elzr/vim-json' }
	-- use { 'leafgarland/typescript-vim' }
	-- use { 'peitalin/vim-jsx-typescript' }

	-- Colorschemes

	use("folke/tokyonight.nvim")
	use("lunarvim/darkplus.nvim")
	use("LunarVim/onedarker.nvim")
	use("rebelot/kanagawa.nvim")
	use({ "rose-pine/neovim", as = "rose-pine", tag = "v1.*" })
	use("morhetz/gruvbox")
	use("frenzyexists/aquarium-vim")
	use("luisiacc/gruvbox-baby")
	use("rafamadriz/neon")
	use("tiagovla/tokyodark.nvim")
	use("sainnhe/everforest")
	use("shaunsingh/nord.nvim")
	use("marko-cerovac/material.nvim")
	use("tomasiser/vim-code-dark")
	use({ "catppuccin/nvim", as = "catppuccin" })
	use("pineapplegiant/spaceduck")
	use("lunarvim/horizon.nvim")
	-- use({ "ntk148v/vim-horizon", as = "horizonvim" })
	use("franbach/miramare")
	use("navarasu/onedark.nvim")
	-- use("olimorris/onedarkpro.nvim")
	use("rmehri01/onenord.nvim")
	use("embark-theme/vim")
	use("rakr/vim-two-firewatch")
	use("Mofiqul/vscode.nvim")
	use("cocopon/iceberg.vim")
	-- use("dunstontc/vim-vscode-theme")

	-- cmp plugins
	use({ "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" }) -- The completion plugin
	use({ "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" }) -- buffer completions
	use({ "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" }) -- path completions
	use({ "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" }) -- snippet completions
	use({ "hrsh7th/cmp-nvim-lsp", commit = "affe808a5c56b71630f17aa7c38e15c59fd648a8" })
	use({ "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" })
	use("f3fora/cmp-spell")
	use("hrsh7th/cmp-emoji")
	use({ "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" })
	use("notomo/cmp-neosnippet")
	use({ "hrsh7th/cmp-cmdline" })
	use({ "David-Kunz/cmp-npm" })
	-- use "zbirenbaum/copilot-cmp"

	-- snippets
	use({ "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" }) --snippet engine
	use({ "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" }) -- a bunch of snippets to use

	-- For vsnip users.
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip")

	-- For ultisnips users.
	use("SirVer/ultisnips")
	use("quangnguyen30192/cmp-nvim-ultisnips")
	use("honza/vim-snippets")

	-- For snippy users.
	use("dcampos/nvim-snippy")
	use("dcampos/cmp-snippy")

	-- LSP
	-- use { "williamboman/nvim-lsp-installer", commit = "e9f13d7acaa60aff91c58b923002228668c8c9e6" } -- simple to use language server installer
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use({ "jose-elias-alvarez/null-ls.nvim", commit = "c0c19f32b614b3921e17886c541c13a72748d450" }) -- for formatters and linters
	use({ "RRethy/vim-illuminate", commit = "a2e8476af3f3e993bb0d6477438aad3096512e42" })
	use("github/copilot.vim")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-ui-select.nvim")
	use("tom-anders/telescope-vim-bookmarks.nvim")
	use("nvim-telescope/telescope-media-files.nvim")
	-- use { 'MunifTanjim/eslint.nvim' }
	use({ "WhoIsSethDaniel/toggle-lsp-diagnostics.nvim" })

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")
	use({ "m-demare/hlargs.nvim" })
	-- use { "p00f/nvim-ts-rainbow" }
	use { "hiphish/rainbow-delimiters.nvim" }
	-- use("https://gitlab.com/HiPhish/rainbow-delimiters.nvim")
	use("nvim-treesitter/nvim-treesitter-textobjects")
	use("windwp/nvim-ts-autotag")

	-- Git
	use({ "lewis6991/gitsigns.nvim", commit = "f98c85e7c3d65a51f45863a34feb4849c82f240f" })
	use("tpope/vim-fugitive")
	use({
		"kdheepak/lazygit.nvim",
		-- optional for floating window border decoration
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})

	-- DAP
	-- use("mfussenegger/nvim-dap")
	-- use("theHamsta/nvim-dap-virtual-text")
	-- use("rcarriga/nvim-dap-ui")

	-- use({ "ravenxrz/DAPInstall.nvim", commit = "8798b4c36d33723e7bba6ed6e2c202f84bb300de" })

	-- use {
	--   "microsoft/vscode-js-debug",
	--   opt = true,
	--   run = "npm install --legacy-peer-deps && npm run compile"
	-- }

	use({
		"microsoft/vscode-js-debug",
		opt = true,
		run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
	})

	use("mxsdev/nvim-dap-vscode-js")

	-- use({
	-- 	"mxsdev/nvim-dap-vscode-js",
	-- 	commit = "079d0f3713c4649603290dc2ecc765e23e76a9fc",
	-- 	requires = { "mfussenegger/nvim-dap" },
	-- })

	-- MORE
	use("sheerun/vim-polyglot")
	use("eandrju/cellular-automaton.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
