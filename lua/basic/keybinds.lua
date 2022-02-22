-- 键位设置配置
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- C-u和C-d调整为上下滑动10行而不是半页
map("n", "<C-u>", "10k", opt)
map("n", "<C-d>", "10j", opt)

-- visual 模式下可以连续 > 缩进代码
map("v", "<", '<gv', opt)
map("v", ">", ">gv", opt)

-- 分屏
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "so", "<C-w>o", opt)

-- 比例控制
map("n", "s>", ":vertical resize +20<CR>", opt)
map("n", "s<", ":vertical resize -20<CR>", opt)
map("n", "s=", "<C-w>=", opt)
map("n", "sj", ":resize +10<CR>", opt)
map("n", "sk", ":resize -10<CR>", opt)

-- 窗口跳转
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)

-- 正常模式下按ESC取消高亮显示
map("n", "<ESC>", ":nohlsearch<CR>", opt)
-- 通过leader cs 切换拼写检查
map("n", "<leader>cs", "<cmd>set spell!<CR>", opt)

-- nvim-tree 快捷键配置
map('n', "<leader>1", ":NvimTreeToggle<CR>", opt)

-- bufferline 快捷键配置
map("n", "<C-q>", ":Bdelete<CR>", opt)
-- 切换上一个缓冲区
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
-- 切换到下一个缓冲区
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)

-- 关闭左侧缓冲区
map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
-- 关闭右侧缓冲区
map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)

--hlslens 快捷键
map("n", "n", "<Cmd>execute('normal!'.v:count1.'n')<CR><Cmd>lua require('hlslens').start()<CR>", opt)
map("n", "n", "<Cmd>execute('normal!'.v:count1.'N')<CR><Cmd>lua require('hlslens').start()<CR>", opt)
map("n", "*", "*<Cmd>lua require('hlslens').start()<CR>", opt)
map("n", "#", "#<Cmd>lua require('hlslens').start()<CR>", opt)
map("n", "g*", "g*<Cmd>lua require('hlslens').start()<CR>", opt)
map("n", "g#", "g#<Cmd>lua require('hlslens').start()<CR>", opt)
