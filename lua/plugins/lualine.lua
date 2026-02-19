return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      -- Get the current background color from Normal highlight
      local normal_bg = vim.api.nvim_get_hl_by_name("Normal", true).background
      if normal_bg then
        normal_bg = string.format("#%06x", normal_bg)
      else
        normal_bg = "#000000" -- fallback dark
      end

      opts.options = opts.options or {}
      opts.options.theme = {
        normal = { c = { bg = normal_bg, fg = "#FFFFFF" } },
        insert = { c = { bg = normal_bg, fg = "#FFFFFF" } },
        visual = { c = { bg = normal_bg, fg = "#FFFFFF" } },
        replace = { c = { bg = normal_bg, fg = "#FFFFFF" } },
        command = { c = { bg = normal_bg, fg = "#FFFFFF" } },
      }
    end,
  },
}
