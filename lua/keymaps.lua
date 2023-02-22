local function map(mode, lhs, rhs, opts)
	local options = { noremap = true, silent = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('', 'J', '5j', {})
map('', 'K', '5k', {})

-- Shortcut for quiting and saving
-- map('', 'Q', ':q<cr>', {})
-- map('', 'S', ':w<cr>', {})

-- About buffers
map('n', ',,', '<cmd>sp term://${SHELL}<cr><c-w>x<c-w>w', {})
map('n', '<leader>[]', '<cmd>tabedit<cr>', {})
map('n', '{', '<cmd>bp<cr>', {})
map('n', '}', '<cmd>bn<cr>', {})
map('n', 'tx', '<cmd>bd<cr>', {})

-- Quickly edit the configuration
map('n', '<leader>fs', '<cmd>tabedit ~/.config/nvim/lua/plugins.lua<cr>', {})

-- Copy and Past from the system clipboard
map('v', 'Y', '"+y', {})
map('n', 'P', '"+p', {})

-- Some functional configuration
map('n', '<backspace>', '<cmd>noh<cr>', {})		-- cancel highlight that from search
map('n', '<space>', 'viw', {})				-- select a word
map('n', '-', '@q', {})						-- play the macro 'q'

-- -- NvimTree
-- Open NvimTree
map("n", "<leader>t", "<cmd>NvimTreeToggle<CR>", {});
map("n", "<leader>f", "<cmd>NvimTreeFocus<CR>", {});

-- -- Telescope
-- Find file
map("n", "<leader>ff", "<cmd>Telescope find_files theme=dropdown<CR>", {})
-- Find word
map("n", "<leader>fg", "<cmd>Telescope live_grep theme=dropdown<CR>", {})
-- Find special sample
map("n", "<leader>fb", "<cmd>Telescope buffers theme=dropdown<CR>", {})
-- check help doc
map("n", "<leader>fh", "<cmd>Telescope help_tags theme=dropdown<CR>", {})
-- check recent files
map("n", "<leader>fo", "<cmd>Telescope oldfiles theme=dropdown<CR>", {})
-- find marks
map("n", "<leader>fm", "<cmd>Telescope marks theme=dropdown<CR>", {})

-- -- Terminal
map("n", "<C-t>", "<cmd>term<CR>", {})
map("t", "<Esc>", "<C-\\><C-n>", {})

-- -- VIM Table Mode(markdown)
-- 打开/关闭插件
map("n", "<leader>tm", ":TableModeToggle<CR>", {})
