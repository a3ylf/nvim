--vim.keymap.set("n", "<leader>bb", vim.cmd.Ex)

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<#>", "<#>zz")
vim.keymap.set("n", "<*>", "<*>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("n", "<leader>y", [["+y]])
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>ff",[[<Cmd>lua require"fzf-lua".files()<CR>]] , {})
vim.keymap.set("n", "<leader>fa",[[<Cmd>lua require"fzf-lua".files({cwd = "~/"})<CR>]] , {})
vim.keymap.set("n", "<leader>fo",[[<Cmd>lua require"fzf-lua".oldfiles()<CR>]] , {})
vim.keymap.set("n", "<leader>fl",[[<Cmd>lua require"fzf-lua".live_grep_native()<CR>]] , {})
vim.keymap.set("n", "<leader>fc",[[<Cmd>lua require"fzf-lua".grep_curbuf()<CR>]] , {})

-- hovering and seeing info
vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
vim.keymap.set("n", "<F3>", vim.lsp.buf.rename, {})

vim.keymap.set("n", "-", "<CMD>Oil<CR>")
vim.keymap.set("n", "<leader>-", "<CMD>Oil --float<CR>")

vim.keymap.set("n", "<leader>ger", "iif err != nil {\n  fmt.Println(err)\n}<Esc>") --xd
vim.keymap.set("n", "<leader>un", vim.cmd.UndotreeToggle)
