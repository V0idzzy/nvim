-- plugins/harpoon.lua
return {
  "ThePrimeagen/harpoon", -- The Harpoon plugin
  branch = "harpoon2", -- Use Harpoon2 branch
  dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
  config = function()
    local ok, harpoon = pcall(require, "harpoon")
    if not ok then
      return
    end
    harpoon:setup() -- Basic setup; no keymaps here
  end,
}
