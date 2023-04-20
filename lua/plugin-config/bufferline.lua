local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("没有找到 bufferline")
    return
end
--bufferline 配置
bufferline.setup({
    options = {
        --关闭 Tap 的命令， 这里使用 moll/vim-bbye 的 :Bdelete命令
        close_cmmand = "Bdelete! %d",
        right_mouse_command = "Bdeleted! %d",
        --侧边栏配置
        --左侧让出nvim-tree的位置，显示File Explorer
        offsets = {
            {
                filetype = "NvimTree",
                text = "file Explorer",
                highlight = "Directory",
                text_algin = "left",
            },
        },
        --使用 nvim 内置 LSP 
        diagnostics = "nvim-lsp",
        -- 可选，显示 LSP 报错图标
        --@diagnostic disable-next-line: unused-local
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            local s = " "
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " " or (e == "warning" and " " or "")
                s = s .. n .. sym
            end
            return s
        end,
    },
})
