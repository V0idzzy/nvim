-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.schedule(function()
  -- Ensure Harpoon plugin is loaded
  require("lazy").load({ plugins = { "harpoon" } })

  local ok, harpoon = pcall(require, "harpoon")
  if not ok then
    return
  end

  harpoon:setup()
  local list = harpoon:list()

  -- Harpoon file navigation
  vim.keymap.set("n", "<C-h>", function()
    list:select(1)
  end, { desc = "Harpoon 1" })
  vim.keymap.set("n", "<C-j>", function()
    list:select(2)
  end, { desc = "Harpoon 2" })
  vim.keymap.set("n", "<C-k>", function()
    list:select(3)
  end, { desc = "Harpoon 3" })
  vim.keymap.set("n", "<C-l>", function()
    list:select(4)
  end, { desc = "Harpoon 4" })

  -- Toggle Harpoon menu
  vim.keymap.set("n", "<C-e>", function()
    harpoon.ui:toggle_quick_menu(list)
  end, { desc = "Harpoon Menu" })

  -- Add current file to Harpoon
  vim.keymap.set("n", "<leader>a", function()
    list:add()
  end, { desc = "Add File to Harpoon" })
end)
