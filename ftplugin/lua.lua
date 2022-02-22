-- 是否将tab替换为space
vim.bo.expandtab = true
-- 换行或 < > 缩进时space 的数量
vim.bo.shiftwidth = 4
-- 一个tab占几个space
vim.bo.tabstop = 4
-- tab 和 space 的混合
vim.bo.softtabstop = 4

-- 取消自动注释, 当前行是注释时，按下CR或者o会默认注释下一行，这里取消这个机制
vim.opt_local.formatoptions = vim.opt_local.formatoptions - {"c", "r", "o"}
