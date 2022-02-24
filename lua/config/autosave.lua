require("autosave").setup(
{
    enabled = true,
    -- 触发自动保存的事件
    events = {"InsertLeave", "TextChanged"},
    -- 自动保存时的提示信息
    execution_message = "writting...",
    conditions = {
        exists = true,
        -- 忽略自动保存的文件名称或者文字类型
        filename_is_not = {},
        filetype_is_not = {},
        modifiable = true
    },
    --保存时写入全部的buffer
    write_all_buffers = true,
    on_off_commands = false,
    clean_command_line_interval = 0,
    debounce_delay = 135
}
)
