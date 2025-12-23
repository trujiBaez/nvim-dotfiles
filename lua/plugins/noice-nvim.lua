return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        cmdline = {
          view = "cmdline_popup", -- popup centrado
        },
        views = {
          cmdline_popup = {
            position = {
              row = "40%",
              col = "50%",
            },
            size = {
              width = 60,
              height = "auto",
            },
          },
        },
        presets = {
          bottom_search = false,       -- búsqueda también centrada
          command_palette = true,
          long_message_to_split = true,
          lsp_doc_border = true,
        },
      })

      -- Opcional: usar notify para mensajes
      vim.notify = require("notify")
    end,
  },
}

