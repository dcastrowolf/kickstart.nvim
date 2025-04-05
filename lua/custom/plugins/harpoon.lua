return {
  'theprimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set('n', '<leader>m', function()
      harpoon:list():add()
    end)
    vim.keymap.set('n', '<leader>q', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    for i = 1, 8 do
      local cmd = '<leader>' .. i
      vim.keymap.set('n', cmd, function()
        harpoon:list():select(i)
      end)
    end
  end,
}
