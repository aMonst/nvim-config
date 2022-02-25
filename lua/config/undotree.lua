vim.cmd([[
    if has("persistent_undo")
        let target_path = expand(undotree_dir)
        if !isdirectory(target_path)
            call mkdir(target_path)
        endif
        let &undodir = target_path
        set undofile
]])
