return {
  "m4xshen/autoclose.nvim",
  config = function ()
    require("autoclose").setup({
     options = {
        disable_when_touch = true,
        pair_spaces = true,
        disabled_filetypes = {"text", "markdown"},
      }
    })
  end
}
