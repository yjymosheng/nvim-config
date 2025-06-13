-- 键位映射
vim.api.nvim_set_keymap('n', '<space>e', ':b#<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>w', ':wq<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>s', ':w<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<space>q', ':q!<CR>', { noremap = true })
vim.api.nvim_set_keymap('i', 'jf', '<Esc>', { noremap = true })
vim.api.nvim_set_keymap('v', 'jf', '<Esc>', { noremap = true })
vim.g.mapleader = " "

-- 基本设置
vim.o.number = true               -- 显示行号
vim.o.relativenumber = true       -- 显示相对行号
vim.o.autoindent = true           -- 启用自动缩进
vim.o.smartindent = true          -- 启用智能缩进
vim.o.ignorecase = true           -- 搜索时忽略大小写
vim.o.smartcase = true            -- 智能大小写搜索
vim.o.hlsearch = true             -- 高亮显示搜索结果
vim.o.incsearch = true            -- 实时搜索
vim.o.cursorline = true           -- 高亮当前行
vim.o.wildmenu = true             -- 命令行补全
vim.o.showcmd = true              -- 显示不完整的命令
vim.o.syntax = 'on'               -- 启用语法高亮
vim.g.mapleader = " "		  -- 设置leader 为space

-- 自动命令：保存时自动移除行尾空白字符
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = ":%s/\\s\\+$//e"
})



