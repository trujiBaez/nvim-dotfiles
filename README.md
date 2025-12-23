# Neovim Dotfiles (Minimalista y Modular)

Esta es mi configuración personal de Neovim, diseñada para ser **simple**, **modular** y **fácil de mantener**.  
La estructura se basa en separar claramente **opciones**, **atajos** y **plugins**, manteniendo un flujo limpio y reproducible.

---

## 📂 Estructura del proyecto

```text
~/.config/nvim
├── init.lua
├── lazy-lock.json
└── lua
├── plugins/        # Configuración modular de plugins
│   ├── catppuccin.lua
│   ├── lualine.lua
│   ├── neo-tree.lua
│   ├── noice-nvim.lua
│   ├── nvim-notify.lua
│   └── telescope.lua
├── vim-options.lua   # Opciones generales de Neovim
└── keymaps.lua       # Atajos globales
```

---

## ⚙️ Archivos principales

### **'init.lua'**
Punto de entrada. Define la tecla líder, carga 'lazy.nvim', inicializa plugins, opciones y keymaps.

### **'lua/vim-options.lua'**
Opciones básicas de Neovim:  
'number', 'relativenumber', 'expandtab', 'shiftwidth', etc.

### **'lua/keymaps.lua'**
Atajos globales centralizados, incluyendo:
- '<leader>e' → abrir/cerrar Neo-tree  
- '<C-h>' / '<C-l>' → moverse entre ventanas  
- '<Tab>' / '<S-Tab>' → navegar buffers  
- '<leader>f' → buscar archivos (Telescope)  
- '<leader>fg' → buscar texto  
- '<leader>fb' → listar buffers  
- '<leader>g' / '<leader>c' → insertar encabezados personalizados  

### **'lua/plugins/*'**
Configuración modular de cada plugin:
- 'catppuccin.lua' → tema de colores  
- 'lualine.lua' → barra de estado  
- 'neo-tree.lua' → explorador de archivos  
- 'noice-nvim.lua' → interfaz de mensajes  
- 'nvim-notify.lua' → sistema de notificaciones  
- 'telescope.lua' → buscador de archivos y texto  

---

## 🎯 Filosofía

- **Minimalismo**: solo lo esencial, sin ruido.  
- **Modularidad**: cada plugin vive en su propio archivo.  
- **Claridad**: keymaps centralizados y documentados con 'desc'.  
- **Reproducibilidad**: 'lazy-lock.json' fija versiones exactas de plugins.  

---

## 🤝 Créditos y agradecimientos

Algunas partes de esta configuración están basadas en dotfiles creados por otros autores.  
Los recopilé y adapté hace años, y no siempre recuerdo la fuente original.  
Si alguien reconoce su trabajo, estaré encantado de añadir la atribución correspondiente.

---

## 💡 Nota personal

Este repositorio existe principalmente para facilitar mis propias reinstalaciones y mantener un entorno coherente entre equipos.  
Si te resulta útil, siéntete libre de usarlo o adaptarlo.


