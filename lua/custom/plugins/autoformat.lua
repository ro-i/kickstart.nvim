return {
  "vim-autoformat/vim-autoformat",
  config = function()
    vim.g.formatters_python = { "black" }
    vim.keymap.set('n', 'F', '<Cmd>Autoformat<CR>')
  end,
}
