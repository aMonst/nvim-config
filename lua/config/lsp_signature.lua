require("lsp_signature").setup(
    {
        bind = true,
        -- 边框样式
        handler_opts = {
            border = "rounded"
        },

        --自动触发
        floating_window = false,
        --绑定键位
        toggle_key = "<C-j>",
        -- 提示关闭
        hint_enable = false,
        hi_parameter = "LspSignatureActiveParameter"
    }
)
