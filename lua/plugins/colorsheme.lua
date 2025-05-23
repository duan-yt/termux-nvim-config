return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      custom_highlights = function(colors)
      return {
          LineNr     = { fg = colors.surface2 },
          Visual     = { bg = colors.overlay0 },
          Search     = { bg = colors.surface2 },
          IncSearch  = { bg = colors.lavender },
          CurSearch  = { bg = colors.lavender },
          MatchParen = { bg = colors.lavender, fg = colors.base, bold = true },
        }
      end,
      integrations = {
        barbar = true,
        blink_cmp = true,
        gitsigns = true,
        mason = true,
        noice = true,
        nvimtree = true,
        rainbow_delimiters = true,
      }
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end
  }
}
