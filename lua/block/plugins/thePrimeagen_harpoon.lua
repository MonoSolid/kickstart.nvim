return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, {
      desc = '[H]arpoon [A]dd',
    })
    vim.keymap.set('n', '<leader>hm', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, {
      desc = '[H]arpoon [M]enu',
    })

    vim.keymap.set('n', '<leader>j', function()
      harpoon:list():select(1)
    end, {
      desc = '[H]arpoon Goto',
    })
    vim.keymap.set('n', '<leader>k', function()
      harpoon:list():select(2)
    end, {
      desc = '[H]arpoon Goto',
    })
    vim.keymap.set('n', '<leader>l', function()
      harpoon:list():select(3)
    end, {
      desc = '[H]arpoon Goto',
    })
    vim.keymap.set('n', '<leader>;', function()
      harpoon:list():select(4)
    end, {
      desc = '[H]arpoon Goto',
    })

    vim.keymap.set('n', '<leader>hp', function()
      harpoon:list():prev()
    end, {
      desc = '[H]arpoon [P]rev',
    })
    vim.keymap.set('n', '<leader>hn', function()
      harpoon:list():next()
    end, {
      desc = '[H]arpoon [N]ext',
    })
  end,
}
