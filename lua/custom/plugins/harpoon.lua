return {
  {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    branch = 'harpoon2',
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup {
        settings = {
          save_on_toggle = true,
        },
      }

      vim.keymap.set('n', '<leader>ha', function()
        harpoon:list():add()
      end, { desc = 'Add current file to harpoon' })

      vim.keymap.set('n', '<leader>hh', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, {
        desc = 'Toggle harpoon quick menu',
      })

      -- The keymaps rationale is "leader and home row with right hand (i use an Ergodox EZ with minimal custom keys)"
      vim.keymap.set('n', '<leader>j', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon 1' })

      vim.keymap.set('n', '<leader>k', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon 2' })

      vim.keymap.set('n', '<leader>l', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon 3' })

      vim.keymap.set('n', '<leader>;', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon 4' })
    end,
  },
}
