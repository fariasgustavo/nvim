return {
  'tpope/vim-fugitive',
  cmd = { 'Git', 'G' },
  keys = {
    { '<leader>gs', '<cmd>Git<cr>', desc = 'Git [s]tatus' },
    { '<leader>gb', '<cmd>Git blame<cr>', desc = 'Git [b]lame' },
    { '<leader>gl', '<cmd>Git log --oneline<cr>', desc = 'Git [l]og' },
    { '<leader>gd', '<cmd>Gdiffsplit<cr>', desc = 'Git [d]iff split' },
  },
}
