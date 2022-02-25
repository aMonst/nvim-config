-- 键位设置配置
vim.g.mapleader = " "
vim.g.maplocalleader = " "
map = vim.api.nvim_set_keymap
dmap = vim.api.nvim_del_keymap
bmap = vim.api.nvim_buf_set_keymap
opt = {noremap = true, silent = true}

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

-- spectre 快捷键
-- 全项目替换
map("n", "<leader>rp", "<cmd>lua require('spectre').open()<CR>", opt)
-- 只替换当前文件
map("n", "<leader>rf", "<cmd>lua require('spectre').open_file_search()<CR>", opt)
-- 全项目中所有当前词
map("n", "<leader>rw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", opt)

-- toggleterm 绑定
-- 打开普通终端
map("n", "<leader>tt", "<cmd>exe v:count.'ToggleTerm'<CR>", opt)
-- 退出终端插入模式
map("t", "<Esc>", "<C-\\><C-n>", opt)
-- 进入浮动式终端
map("n", "<leader>tf", "<cmd>lua require('toggleterm').float_toggle()<CR>", opt)
-- 打开lazygit
map("n", "<leader>tg", "<cmd>lua require('toggleterm').lazygit_toggle()<CR>", opt)
-- 打开或者关闭所有终端
map("n", "<leader>ta", "<cmd>ToggleTermToggleAll<CR>", opt)
