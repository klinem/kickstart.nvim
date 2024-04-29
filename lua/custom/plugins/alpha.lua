return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'

    dashboard.section.buttons.val = {
      dashboard.button('e', '  New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('SPC ee', '  Toggle file explorer', ':NvimTreeToggle<CR>'),
      dashboard.button('SPC sf', '󰱼  Find File', ':Telescope find_files<CR>'),
      dashboard.button('SPC sg', '  Find Word', ':Telescope live_grep<CR>'),
      dashboard.button('SPC wr', '󰁯  Restore Session For Current Directory', ':SessionRestore<CR>'),
      dashboard.button('q', '  Quit NVIM', ':qa<CR>'),
    }

    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd [[autocmd FileType alpha setlocal nofoldenable]]
  end,
}
