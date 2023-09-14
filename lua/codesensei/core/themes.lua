local themes = {
  {
    "folke/tokyonight.nvim",
    opts = {},
    name = "tokyonight",
    config = function ()
      require("tokyonight").setup({
        style = "moon",
      })
    end,
    lazy = true,
    priority = 1000
  },
  {
	  "ellisonleao/gruvbox.nvim",
    name = "gruvbox",
    lazy = true
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function ()
      require("catppuccin").setup({
        flavor = "frappe"
      })
    end,
    init = function()
      vim.cmd.colorscheme "catppuccin-frappe"
    end,
    priority = 1000,
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    name = "oxocarbon",
    lazy = true
  },
  {
    "savq/melange-nvim",
    name = "melange",
    lazy = true
  },
  {
    "rmehri01/onenord.nvim",
    name = "onenord",
    lazy = true
  },
  {
    'AlexvZyl/nordic.nvim',
    name = "nordic",
    config = function()
      --require 'nordic' .load()
    end,
    lazy = true
  },
  {
    "Shatur/neovim-ayu",
    name = "ayu",
    config = function ()
      require("ayu").setup({
        mirage = false
      })
    end,
    lazy = true
  },
  {
    "ray-x/aurora",
    name = "aurora",
    lazy = false
  },
  {
    "JoosepAlviste/palenightfall.nvim",
    name = "palenightfall",
    lazy = false
  },
  {
    "gbprod/nord.nvim",
    name = "nord",
    lazy = false
  },
  {
    "neanias/everforest-nvim",
    name = "everforest",
    config = function ()
      require("everforest").setup()
    end,
    lazy = false
  },
  {
    "rafamadriz/neon",
    name = "neon",
    lazy = false
  },
  {
    "RRethy/nvim-base16",
    name = "base16",
    lazy = false,
  },

 }

return themes
