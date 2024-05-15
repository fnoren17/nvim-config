return {
  "akinsho/git-conflict.nvim",
  config = function()
    require("git-conflict").setup({
      default_mappings = false,
    })
    vim.keymap.set("n", "<leader>cc", "<Plug>(git-conflict-ours)")
    vim.keymap.set("n", "<leader>ci", "<Plug>(git-conflict-theirs)")
    vim.keymap.set("n", "<leader>cb", "<Plug>(git-conflict-both)")
    vim.keymap.set("n", "<leader>c0", "<Plug>(git-conflict-none)")
    vim.keymap.set("n", "<leader>pc", "<Plug>(git-conflict-prev-conflict)")
    vim.keymap.set("n", "<leader>nc", "<Plug>(git-conflict-next-conflict)")
  end,
}
