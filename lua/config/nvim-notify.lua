vim.notify = require("notify")

vim.notify.setup(
    {
        stages = "fade",
        --超时设置
        timeout = 2000
    }
)

