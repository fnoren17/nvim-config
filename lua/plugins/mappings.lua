return {
	vim.keymap.set("n", "<C-Up>", ":m .-2<CR>==", {}),
  vim.keymap.set("n", "<C-Down>", ":m .+1<CR>==", {}),
  vim.keymap.set("v", "<C-Up>", ":m '<-2<CR>gv=gv", {}),
  vim.keymap.set("v", "<C-Down>", ":m '>+1<CR>gv=gv", {}),
}
