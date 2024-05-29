return {
  'rmagatti/auto-session',
  config = function()
    require('auto-session').setup {
      auto_restore_enabled = false,
    }

    vim.keymap.set('n', '<leader>wr', '<cmd>SessionRestore<CR>', { desc = 'Restore session for cwd' })
    vim.keymap.set('n', '<leader>ws', '<cmd>SessionSave<CR>', { desc = 'Save session for cwd' })
  end,
}
