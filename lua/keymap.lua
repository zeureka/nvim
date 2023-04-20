vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set
local opt = { noremap = true, silent = true }

--在visual模式下可以连续'> <' 缩进代码
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

--浏览代码
map('n', 'J', '5j', opt)
map('n', 'K', '5k', opt)

map('n', '<leader>fs', ':tabedit ~/AppData/Local/nvim/init.lua<CR>', opt)


-- 取消搜索高亮
map('n', '<backspace>', '<cmd>noh<cr>', opt) -- :noh

-- Windows 分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
--关闭当前
map("n", "sc", "<C-w>c", opt)
--关闭其他
map("n", "so", "<C-w>o", opt)

-- Alt + hjkl 窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

--左右控制比例
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
--上下控制比例
map("n", "<C-Down>", ":resize +2<CR>", opt)
map("n", "<C-Up>", ":resize -2<CR>", opt)
--等比例
map("n", "s=", "<C-w>=", opt)

-- nvim-tree
-- Alt + m 键打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)

--bufferline
--左右Tap切换
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opt)

--关闭
--"moll/vim-bbye"
map("n", "<C-w>", ":Bdelete!<CR>", opt) --关闭当前标签页
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)

-- VIM Table Mode
map("n", "<leader>tm", ":TableModeToggle<CR>", opt) --打开/关闭插件

