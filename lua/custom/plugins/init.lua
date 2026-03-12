return {
  {
    'sindrets/diffview.nvim',
    cmd = { 'DiffviewOpen', 'DiffviewClose', 'DiffviewToggleFiles', 'DiffviewFocusFiles', 'DiffviewFileHistory' },
    keys = {
      { '<leader>gd', '<cmd>DiffviewOpen<cr>', desc = '[G]it [D]iffview Open' },
      { '<leader>gh', '<cmd>DiffviewFileHistory %<cr>', desc = '[G]it File [H]istory' },
      { '<leader>gH', '<cmd>DiffviewFileHistory<cr>', desc = '[G]it Branch [H]istory' },
      { '<leader>gq', '<cmd>DiffviewClose<cr>', desc = '[G]it Diffview [Q]uit' },
    },
    opts = {},
  },
}
