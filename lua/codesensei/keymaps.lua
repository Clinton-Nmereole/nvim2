local keyset = vim.keymap.set

--Window keymaps
keyset("n", "<leader>sv", "<C-w>v") -- split windows vertically
keyset("n", "<leader>sh", "<C-w>s") -- split windows horizontally
keyset("n", "<leader>se", "<C-w>=") -- make split windows equal
keyset("n", "<leader>sx", ":close<CR>") -- close current split window

keyset("n", "<leader>to", ":tabnew<CR>") -- open new tab
--keyset("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keyset("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keyset("n", "<leader>tp", ":tabp<CR>") -- go to previous tab
keyset("n", "<leader>h", "<C-w>h") --move cursor left
keyset("n", "<leader>l", "<C-w>l") --move cursor right
keyset("n", "<leader>mu", "<C-w>k") --split window up horizontally
keyset("n", "<leader>md", "<C-w>j") --split window down horizontally


keyset("n", "<leader>1", ":Run<CR>", { silent = true })
keyset("n", "<leader>2", ":Build<CR>", { silent = true })


keyset("n", "<leader>th", ":ColorMe<CR>")

--Bufferline
keyset("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true})
keyset("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true})
keyset("n", "<leader>x", function ()
  vim.cmd("bd")
  vim.cmd("bNext")
end)

--Undotree
keyset("n", "<leader>ut", ":UndotreeToggle<CR>", { silent = true})

--Spectre Search and Replace
local spectre = require("spectre")
keyset("n", "<leader>sr", function() spectre.toggle() end)
