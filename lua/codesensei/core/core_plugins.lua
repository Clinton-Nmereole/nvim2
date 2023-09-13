local themes = require("codesensei.core.themes")
local M = {
	  {
	  "ellisonleao/gruvbox.nvim"
  	},

  	--Telescope
  	{
  	  'nvim-telescope/telescope.nvim',
  	  tag = '0.1.0',
  	  dependencies = "nvim-lua/plenary.nvim"

  	},

  	--Treesitter stuff
  	{
  	  "nvim-treesitter/nvim-treesitter",
      cmd = { "TSInstall", "TSModuleInfo", "TSBufEnable", "TSBufDisable"},
  	  build = ":TSUpdate"
  	},
  	{
  	  "nvim-treesitter/playground"
  	},

  	--undotree
  	{
  	  "mbbill/undotree",
      cmd = "UndotreeToggle",
      init = function ()
        vim.g.undotree_SetFocusWhenToggle = 1
        vim.g.undotree_SplitWidth = 22
      end
  	},


  	--web dev icons and nvim-tree
  	{
  	  "ryanoasis/vim-devicons"
  	},
  	{
  	  "kyazdani42/nvim-tree.lua",
  	  dependencies = "nvim-tree/nvim-web-devicons",
  	  tag = "nightly" -- optional, updated every week. (see issue #1193)
  	},

  	--Harpoon for file navigation
  	{
  	  "ThePrimeagen/harpoon",
      lazy = true
  	},

  	--LSP Zero
  	{
  	  "VonHeikemen/lsp-zero.nvim",
      branch = "v2.x",
  	  dependencies = {
  	    --LSP support
  	    "neovim/nvim-lspconfig",
  	    "williamboman/mason.nvim",
  	    "williamboman/mason-lspconfig.nvim",

  	    --Autocompletions
  	    "hrsh7th/nvim-cmp",
  	    "hrsh7th/cmp-nvim-lsp",
  	    "hrsh7th/cmp-buffer",
  	    "hrsh7th/cmp-path",
  	    "saadparwaiz1/cmp_luasnip",
  	    "hrsh7th/cmp-nvim-lua",

  	    --Snippets
  	    "L3MON4D3/LuaSnip",
  	    "rafamadriz/friendly-snippets",
  	  }
  	},

  	--indent blankline
  	{
  	  "lukas-reineke/indent-blankline.nvim"
  	},

  	{
  	  "numToStr/Comment.nvim"
  	},

  	{
  	  "glepnir/lspsaga.nvim"
  	},
  	{
  	  "jose-elias-alvarez/null-ls.nvim"
  	},

  	{
  	  "nvim-lualine/lualine.nvim",
  	  dependencies = "nvim-tree/nvim-web-devicons",
  	  opt = true,
  	},


  	--Debbugger
  	{
  	  "mfussenegger/nvim-dap",
      lazy = true
  	},
  	{
  	  "theHamsta/nvim-dap-virtual-text",
      lazy = true
  	},
  	{
  	  "nvim-telescope/telescope-dap.nvim",
      lazy = true
  	},
  	{
  	  "rcarriga/nvim-dap-ui",
      lazy = true
  	},
  	{
  	  "mfussenegger/nvim-dap-python",
      lazy = true
  	},

    -- Notify
    {
      "rcarriga/nvim-notify",
      config = function ()
        require("notify")
      end,
      init = function ()
        vim.notify = require("notify")
      end,

    },

    --Auto pairs
    {
      "windwp/nvim-autopairs",
      opts = {
        fast_wrap = {},
        disable_filetype = {"TelescopePrompt", "vim"},
      },
      config = function(_, opts)
        require("nvim-autopairs").setup(opts)
        --setup cmp for autopairs
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
      end,
    },

    --bufferline
    {
      "akinsho/bufferline.nvim",
      version = "*",
      dependencies = "nvim-tree/nvim-web-devicons",
      config = function ()
        require("bufferline").setup()
      end,
    },
    {
      "folke/noice.nvim",
      event = "VeryLazy",
      dependencies = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
      },
      config = function ()
        require("noice").setup({
          lsp = {
            hover = {
              enabled = false,
            },
            signature = {
              enabled = false,
            }
          },
          presets = {
            bottom_search = true,
            command_palette = true,
            long_message_to_split = true,
            inc_rename = false,
            lsp_doc_border = false,
          }
        })
      end
    },

    --Themes
    themes,

}

return M
