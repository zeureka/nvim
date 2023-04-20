--基础配置
require("basic")

-- Packer插件管理
require("plugins")

-- 主题设置
require("colorscheme")

-- 快捷键映射
require("keymap")

-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.bufferline")
require("plugin-config.lualine")
-- require("plugin-config.nvim-treesitter")

-- 内置LSP
require("lsp.setup")
