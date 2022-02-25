vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

require("auto-session").setup(
    {
        -- 自动加载最后一次保存的会话
        auto_session_enable_last_session = true,
    }
)

-- 每次退出NewVim时自动保存
vim.cmd([[
    autocmd VimLeavePre * silent! :SaveSession
]])
