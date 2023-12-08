return {
  'tamton-aquib/duck.nvim',
  config = function()
    vim.keymap.set('n', '<leader>ür', function() require("duck").hatch("🎅") end, { desc = "duck run" })
    vim.keymap.set('n', '<leader>üs', function() require("duck").cook() end, { desc = "duck stop" })
  end
}
