return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      stages = "fade_in_slide_out",
      timeout = 3000,
      background_colour = "#1e1e2e",
      top_down = false,      -- notificaciones van desde arriba
      render = "default",
      max_width = 40,
    })

    -- Establecer notify como el sistema predeterminado de notificaciones
    vim.notify = require("notify")
  end,
}

