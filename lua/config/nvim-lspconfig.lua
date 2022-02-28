-- 诊断样式
vim.diagnostic.config(
    {
        -- 诊断虚拟文本
        virtual_text = {
            -- 显示前缀
            prefix = "●",
            -- 是否总是显示前缀
            source = "always"
        },
        float = {
            -- 是否显示诊断来源
            source = "always"
        },

        -- 在插入模式下不显示诊断信息
        update_in_insert = false
    }
)
