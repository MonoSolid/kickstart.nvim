--If you experience any errors whilejtrying to install kickstart, run `:checkhealth` for more info.
-- See `:help gitsigns` to understand what the configuration keys do
-- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
-- Or use telescope!
-- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
-- you can continue same window with `<space>sr` which resumes last telescope search

require 'block.setup'

-- [[ Configure and install plugins ]]
--  To check the current status of your plugins, run
--    :Lazy
--  You can press `?` in this menu for help. Use `:q` to close the window
--  To update plugins you can run
--    :Lazy update
require('lazy').setup({
  -- Signs in gutter for git status
  require 'block.plugins.lewis6991_gitSigns',
  -- Pending keybinds
  require 'block.plugins.folke_whichKey',
  -- LSP lua
  require 'block.plugins.folke_lazyDev',
  -- Run multiple terminals inside neovim
  require 'block.plugins.akinsho_toggleTerm',
  -- Fuzzyfinder
  require 'block.plugins.nvim-telescope_telescope',
  -- Main LSP Configuration
  require 'block.plugins.neovim_nvimLspConfig',
  -- Autoformat
  require 'block.plugins.stevearc_conform',
  -- Autocompletion
  require 'block.plugins.saghen_blink',
  -- Colorscheme
  require 'block.plugins.colorScheme',
  -- Highlight todo, notes, etc in comments
  require 'block.plugins.folke_todoComments',
  -- Mini collection
  require 'block.plugins.echasnovski_mini',
  -- Higlight, edit and navigate code, aka Treesitter
  require 'block.plugins.nvim-treesitter_nvimTreesitter',
  -- Line indentations
  require 'block.plugins.lukas-reineke_indentBlankLine',
  -- File explorer ish
  require 'block.plugins.nvim-neo-tree_neotree',
  -- Autopairs
  require 'block.plugins.windwp_nvimAutoPairs',
  -- Harpooning
  require 'block.plugins.thePrimeagen_harpoon',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
