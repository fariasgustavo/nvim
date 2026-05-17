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
}
