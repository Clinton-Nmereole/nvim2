local keyset = vim.keymap.set

keyset("n", "<leader>1", ":Run<CR>", { silent = true })
keyset("n", "<leader>2", ":Build<CR>", { silent = true })


keyset("n", "<leader>th", ":ColorMe<CR>")

--Bufferline
keyset("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true})
keyset("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { silent = true})
