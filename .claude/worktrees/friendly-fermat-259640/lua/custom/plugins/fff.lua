-- FFF.nvim - Fast File Finder
-- A high-performance file search toolkit that replaces Telescope with frecency-ranked,
-- typo-resistant fuzzy matching and intelligent git-aware search.
--
-- https://github.com/dmtrKovalenko/fff.nvim
--
-- Key differences from Telescope:
-- - In-process library (no process spawning) = sub-10ms searches
-- - Frecency ranking (learns which files you open frequently)
-- - Typo-resistant fuzzy matching
-- - Git status awareness (modified/staged/untracked indicators)
-- - Background file watcher (auto-updates index)
-- - Three grep modes: plain, regex, fuzzy

---@module 'lazy'
---@type LazySpec
return {
  'dmtrKovalenko/fff.nvim',
  -- Build: downloads prebuilt binary or falls back to cargo build
  build = function()
    require('fff.download').download_or_build_binary()
  end,
  -- For NixOS users, uncomment this instead:
  -- build = 'nix run .#release',

  -- Configuration options
  ---@module 'fff'
  ---@type FffConfig
  opts = {
    -- Debug settings (useful for learning the scoring system)
    debug = {
      enabled = false, -- Set to true to see search scores
      show_scores = false,
    },

    -- Maximum results to show in picker
    max_results = 100,

    -- Number of threads for search operations
    max_threads = 4,

    -- Lazy synchronization (better performance)
    lazy_sync = true,

    -- Show hidden files by default (dotfiles, .gitignore, etc.)
    show_hidden = true,

    -- Window layout configuration
    layout = {
      height = 0.8,
      width = 0.8,
      prompt_position = 'bottom', -- 'bottom' or 'top'
      preview_position = 'right', -- 'left', 'right', 'top', 'bottom'
      preview_size = 0.5,
      -- Path display: 'middle_number' shows /path/.../filename
      path_shorten_strategy = 'middle_number',
      anchor = 'center',
    },

    -- Preview settings
    preview = {
      enabled = true,
      max_size = 10 * 1024 * 1024, -- 10MB max file size
      line_numbers = false,
      wrap_lines = false,
    },

    -- Keymaps within the picker
    keymaps = {
      -- Multiple ways to close the picker (both Esc and Ctrl+C)
      close = { '<Esc>', '<C-c>' },
      select = '<CR>',
      select_split = '<C-s>',
      select_vsplit = '<C-v>',
      select_tab = '<C-t>',
      move_up = { '<Up>', '<C-p>' },
      move_down = { '<Down>', '<C-n>' },
      preview_scroll_up = '<C-u>',
      preview_scroll_down = '<C-d>',
      toggle_select = '<Tab>', -- Multi-select files
      send_to_quickfix = '<C-q>',
      cycle_grep_modes = '<S-Tab>', -- Cycle plain/regex/fuzzy
      focus_list = '<leader>l',
      focus_preview = '<leader>p',
    },

    -- Frecency (frequency + recency) scoring
    frecency = {
      enabled = true,
      db_path = vim.fn.stdpath('cache') .. '/fff_nvim',
    },

    -- Query history for faster repeat searches
    history = {
      enabled = true,
      db_path = vim.fn.stdpath('data') .. '/fff_queries',
      min_combo_count = 3,
      combo_boost_score_multiplier = 100,
    },

    -- Git integration
    git = {
      status_text_color = false, -- true to color filenames by git status
    },

    -- Grep settings
    grep = {
      max_file_size = 10 * 1024 * 1024,
      max_matches_per_file = 100,
      smart_case = true, -- Case-insensitive unless uppercase letters present
      time_budget_ms = 150,
      modes = { 'plain', 'regex', 'fuzzy' }, -- Available modes
      trim_whitespace = false,
    },
  },

  -- Lazy loading is handled internally by the plugin
  lazy = false,

  -- Keymaps for the plugin
  keys = {
    -- File finding
    {
      'ff',
      function() require('fff').find_files() end,
      mode = 'n',
      desc = 'FFF: Find files',
    },
    {
      '<leader>ff',
      function() require('fff').find_files() end,
      mode = 'n',
      desc = 'FFF: Find files',
    },
    -- Grep modes
    {
      'fg',
      function() require('fff').live_grep() end,
      mode = 'n',
      desc = 'FFF: Live grep (plain/regex/fuzzy)',
    },
    {
      '<leader>fg',
      function() require('fff').live_grep() end,
      mode = 'n',
      desc = 'FFF: Live grep',
    },
    -- Fuzzy-only grep
    {
      'fz',
      function()
        require('fff').live_grep({ grep = { modes = { 'fuzzy', 'plain' } } })
      end,
      mode = 'n',
      desc = 'FFF: Fuzzy grep',
    },
    -- Search current word
    {
      'fc',
      function()
        require('fff').live_grep({ query = vim.fn.expand('<cword>') })
      end,
      mode = 'n',
      desc = 'FFF: Search current word',
    },
    {
      '<leader>fw',
      function()
        require('fff').live_grep({ query = vim.fn.expand('<cword>') })
      end,
      mode = 'n',
      desc = 'FFF: Search current word',
    },
    -- Find in specific directory
    {
      '<leader>fd',
      function()
        vim.ui.input({ prompt = 'Search directory: ' }, function(input)
          if input then
            require('fff').find_files_in_dir(input)
          end
        end)
      end,
      mode = 'n',
      desc = 'FFF: Find files in directory',
    },
    -- Commands
    {
      '<leader>fs',
      function() require('fff').scan_files() end,
      mode = 'n',
      desc = 'FFF: Force rescan files',
    },
    {
      '<leader>f.',
      function()
        vim.cmd('FFFClearCache all')
        print('FFF cache cleared!')
      end,
      mode = 'n',
      desc = 'FFF: Clear all caches',
    },
  },
}
