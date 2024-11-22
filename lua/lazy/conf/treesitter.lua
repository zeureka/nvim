-- 设置treesitter 编译器为clang
if vim.loop.os_uname().sysname == "Windows_NT" then
    require 'nvim-treesitter.install'.compilers = { "clang" }
end

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "python", "typescript", "cpp", "javascript", "java" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    additional_vim_regex_highlighting = false,
  },
}
