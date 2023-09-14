local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.cursorline = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.number = true
opt.relativenumber = true
opt.ruler = false
opt.ignorecase = true
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true
opt.updatetime = 200
opt.undofile = true
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

--Set lualine as statusline
require('lualine').setup{
     options = {
          icons_enabled = true,
          theme = vim.g.colorscheme,
          component_separators = '|',
          section_separators = '',
     }
}

require("indent_blankline").setup {
    char = '¦',
    show_end_of_line = true,
}
