return {
  "stevearc/conform.nvim",
  init = function()
    vim.g.disable_autoformat = false
    vim.keymap.set("n", "<leader>tf", function()
      if vim.g.disable_autoformat then
        vim.g.disable_autoformat = false
        vim.notify("Autoformat is enabled", vim.log.levels.INFO)
      else
        vim.g.disable_autoformat = true
        vim.notify("Autoformat is disabled", vim.log.levels.WARN)
      end
    end, { desc = "Toggle autoformatting" })
  end,
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    })
  end,
}
