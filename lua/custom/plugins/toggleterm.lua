return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function ()
    require("toggleterm").setup {
      open_mapping = '<C-j>',
      shell = 'zsh'
    }

    function _G.set_terminal_keymaps()
      local _opts = {}
      -- Terminal mode
      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], _opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], _opts)
    end

    -- if you only want these mappings for toggle term use term://*toggleterm#* instead
    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

    vim.cmd('autocmd BufEnter,BufWinEnter,WinEnter term://* startinsert')
  end
}
