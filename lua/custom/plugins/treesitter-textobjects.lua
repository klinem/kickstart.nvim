return {
  'nvim-treesitter/nvim-treesitter-textobjects',
  lazy = true,
  config = function()
    require('nvim-treesitter.configs').setup {
      textobjects = {
        select = {

          enable = true,

          lookahead = true,

          keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ['a='] = { query = '@assignment.outer', desc = 'Select outer part of an assignment' },
            ['i='] = { query = '@assignment.inner', desc = 'Select inner part of an assignment' },
            ['l='] = { query = '@assignment.lhs', desc = 'Select left hand side of an assignment' },
            ['r='] = { query = '@assignment.rhs', desc = 'Select right hand side of an assignment' },

            ['aa'] = { query = '@paramter.outer', desc = 'Select outer part of an argument/paramter' },
            ['ai'] = { query = '@paramter.inner', desc = 'Select inner part of an argument/paramter' },

            ['al'] = { query = '@loop.outer', desc = 'Select outer part of a loop' },
            ['il'] = { query = '@loop.inner', desc = 'Select inner part of a loop' },

            ['af'] = { query = '@call.outer', desc = 'Select outer part of a function call' },
            ['if'] = { query = '@call.inner', desc = 'Select inner part of a function call' },

            ['am'] = { query = '@function.outer', desc = 'Select outer part of a function/method definition' },
            ['im'] = { query = '@function.inner', desc = 'Select inner part of a function/method definition' },
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            [']a'] = { query = '@paramter.outer', desc = 'Next paramter start' },

            [']f'] = { query = '@call.outer', desc = 'Next function call start' },
            [']m'] = { query = '@function.outer', desc = 'Next function/method definition start' },

            [']s'] = { query = '@scope', query_group = 'locals', desc = 'Next scope' },
            [']z'] = { query = '@scope', query_group = 'folds', desc = 'Next fold' },
          },
          goto_next_end = {
            [']F'] = { query = '@call.outer', desc = 'Next function call end' },
            [']M'] = { query = '@function.outer', desc = 'Next function/method definition end' },
          },
          goto_previous_start = {
            ['[f'] = { query = '@call.outer', desc = 'Previous function call start' },
            ['[m'] = { query = '@function.outer', desc = 'Previous function/method defintion start' },
          },
          goto_previous_end = {
            ['[F'] = { query = '@call.outer', desc = 'Previous function call end' },
            ['[M'] = { query = '@function.outer', desc = 'Previous function/method definition end' },
          },
        },
      },
    }
  end,
}
