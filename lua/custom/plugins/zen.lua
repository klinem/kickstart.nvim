return {
  'folke/zen-mode.nvim',
  opts = {
    plugins = {
      wezterm = {
        enabled = true,
      },
    },
  },
  config = function()
    vim.keymap.set('n', '<leader>Z', '<cmd>ZenMode<CR>', { desc = 'Toggle Zen Mode' })
  end,
}
