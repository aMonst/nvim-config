vim.o.sessionoptions = "blank, buffers, curdir, folds, help, tabpages, winsize, winpos, terminal"

require("auto-session").setup(
    {
        -- 自动加载最后一次保存的会话
        auto_session_enable_last_session = true,
        -- 保存会话时关闭nvim-tree, 它会破坏会话的保存过程
        pre_save_cmds = {"tabdo NvimTreeClose"}
    }
)

-- 每次退出neovim时自动保存
vim.cmd([[
    auto cmd VimLeavePre * silent! :SaveSession
]])
