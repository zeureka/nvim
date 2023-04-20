--编码格式
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

--光标移动时，周围保留5行
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5

--使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true

--高亮所在行
vim.wo.cursorline = true

--显示左侧图标指示列
vim.wo.signcolumn = "yes"

--tap缩进
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smartindent = true

-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

--新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.o.cindent = true

--搜索大小写不敏感，除非包含大小写
vim.o.ignorecase = true
vim.o.smartcase = true

--搜索时高亮
vim.o.hlsearch = true

--边输入边搜索
vim.o.incsearch = true

--命令行高为2
--vim.o.cmdheight = 2

--鼠标支持
vim.o.mouse = "a"

--自动补全不自动选中
vim.g.completeopt = "menum, menuone, noselect, noinsert"

--样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

--补全增强
vim.o.wildmenu = true

--补全最多10行
vim.o.pumheight = 10

--永远显示tabline
vim.o.showtabline = 2

-- Markdown-Preview.nvim
vim.g.mkdp_filetypes = { 'markdown' }
vim.cmd('autocmd vimenter *.md exec ":MarkdownPreview"')
vim.g.mkdp_path_to_chrome = {'path/of/chrome'}

-- 打开文件时，跳转到关闭文件时的光标处
vim.api.nvim_create_autocmd("BufReadPost", {
    pattern = {"*"},
    callback = function()
        if vim.fn.line(" '\" ") > 1 and vim.fn.line(" '\" ") <= vim.fn.line("$") then
            vim.api.nvim_exec("normal! g'\"", false)
        end
    end
})

--使用增强状态栏插件后不再需要 vim 的模式提示
--vim.o.showmode = false

--不可见字符的显示，这里只把空格显示为一个点
-- vim.opt.list = true
-- vim.o.listchars = "space:·"

