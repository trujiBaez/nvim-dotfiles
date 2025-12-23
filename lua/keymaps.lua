-- keymaps.lua
local map = vim.keymap.set

-- Neo-tree
vim.keymap.set('n', '<leader>e', '<cmd>Neotree filesystem toggle left<cr>', { desc = "Toggle Neo-tree" })

-- Navegación entre ventanas
map('n', '<C-h>', '<C-w>h', { desc = "Ventana izquierda" })
map('n', '<C-l>', '<C-w>l', { desc = "Ventana derecha" })

-- Búsqueda
map('n', '<leader>n', ':nohlsearch<CR>', { desc = "Clear search highlight" })
map('n', '<leader>0', 'gg0', { desc = "Ir al inicio del archivo" })

-- Buffers
map('n', '<Tab>', ':bnext<CR>', { desc = "Next Buffer" })
map('n', '<S-Tab>', ':bprevious<CR>', { desc = "Previous Buffer" })

local builtin = require("telescope.builtin")

-- Telescope
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = "Buscar archivos (Telescope)" })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = "Buscar texto (Telescope)" })

-- Insertar encabezados
map('n', '<leader>g', function()
  vim.cmd('r /home/at/.config/scripts/g_Header.txt')
  vim.api.nvim_feedkeys('2G17|a', 'n', false)
end, { noremap = true, silent = true, desc = "Insertar header general" })

map('n', '<leader>c', function()
  vim.cmd('r /home/at/.config/scripts/c_Header.txt')
  vim.api.nvim_feedkeys('2G21|a', 'n', false)
end, { noremap = true, silent = true, desc = "Insertar header C++" })

