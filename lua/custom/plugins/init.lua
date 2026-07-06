-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  -- Git conflict resolution helper
  -- https://github.com/akinsho/git-conflict.nvim
  {
    'akinsho/git-conflict.nvim',
    version = '*', -- Use latest release
    event = 'VeryLazy',
    opts = {
      -- Default configuration
      default_mappings = true, -- Enable default keymaps
      default_commands = true, -- Enable default commands
      disable_diagnostics = false, -- Keep diagnostics on in conflict buffers
      list_opener = 'copen', -- Quickfix list opener command
      highlights = {
        -- Override colors if needed
        incoming = 'DiffAdd',
        current = 'DiffText',
      },
    },
  },

  -- AI code completion via virtual text
  -- https://github.com/milanglacier/minuet-ai.nvim
  {
    'milanglacier/minuet-ai.nvim',
    config = function()
      require('minuet').setup {
        provider = 'claude',
        provider_options = {
          claude = {
            model = 'claude-sonnet-4-6',
          },
        },
        virtualtext = {
          auto_trigger_ft = { '*' },
          keymap = {
            accept = '<C-l>',
            accept_line = '<A-a>',
            prev = '<A-[>',
            next = '<A-]>',
            dismiss = '<A-e>',
          },
        },
      }
    end,
  },
}
