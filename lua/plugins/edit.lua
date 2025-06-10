return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {
      ignored_next_char = "[%w%.]", -- will ignore alphanumeric and `.` symbol
    },
    config = function()
      require("nvim-autopairs").setup({
        check_ts = true,
        fast_wrap = {
          map = "<M-e>",
          chars = { "{", "[", "(", '"', "'" },
          pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
          offset = 0, -- Offset from pattern match
          end_key = "$",
          keys = "qwertyuiopzxcvbnmasdfghjkl",
          check_comma = true,
          highlight = "Search",
          highlight_grey = "Comment",
        },
        disable_filetype = { "TelescopePrompt", "vim" },
      })
    end,
  },
  { "mg979/vim-visual-multi" },
  { "numToStr/Comment.nvim", event = "VeryLazy", opts = {} },
}
