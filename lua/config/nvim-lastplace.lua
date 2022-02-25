require("nvim-lastplace").setup(
    {
        -- 定义不需要记录光标位置的buffer
        lastplace_ignore_type = {"quickfix", "nofile", "help"},
        -- 定义不需要记录光标位置的文件类型
	    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
	    lastplace_open_folds = true
     }
)
