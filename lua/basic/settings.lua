-- 设置各种文字的字符编码
vim.o.encoding = "utf-8"
-- 设置在无操作时，交换文件刷写到磁盘的等待时间（默认为 4000）
vim.o.updatetime = 100
-- 设定等待按键时长毫秒数
vim.o.timeoutlen = 500
-- 是否在屏幕最后一行显示命令
vim.o.showcmd = true
-- 是否允许缓冲区未保存时就切换
vim.o.hidden = true
-- 是否开启xterm 兼容的终端24位色彩支持
vim.o.termguicolors = true
-- 是否高亮当前文本行
vim.o.cursorline = true
-- 是否开启语法高亮
vim.o.syntax = "enable"
-- 是否显示绝对行号
vim.o.number = true
-- 是否显示相对行号
vim.o.relativenumber = true
-- 设定光标上下两侧最少保留的屏幕行数
vim.scrolloff = 10
-- 是否支持鼠标操作
vim.o.mouse = "a"
-- 是否启用系统剪切板
vim.o.clipboard = "unnamedplus"
-- 是否开启备份文件
vim.o.backup = false
-- 是否开启交换文件
vim.o.swapfile = false
-- 是否将特殊字符显示为空格
vim.o.list = true
-- 是否开启自动缩进
vim.o.autoindent = true
-- 开启自动识别文件类型并加载对应配置的选项
vim.o.filetype = 'plugin'
-- 是否开启高亮搜索
vim.o.hlsearch = true
-- 是否在插入括号时短暂跳转到另一半括号上
vim.o.showmatch = true
-- 是否开启命令行补全
vim.o.wildmenu = true
-- 是否搜索时忽略大小写
vim.o.ignorecase = true
-- 搜索时输入大写则忽略大小写
vim.o.smartcase = true
-- 开启拼写检查
vim.o.spell = true
-- 设定单词拼写检查语言
vim.o.spelllang = "en_us,cjk"
-- 开启代码折叠
vim.o.foldenable = true
-- 指定代码折叠策略按照缩进进行
vim.o.foldmethod = "indent"
-- 指定代码折叠的最高层为 100
vim.o.foldlevel = 100
