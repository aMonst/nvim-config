require("which-key").setup(
    {
        plugins = {
            spelling = {
                -- 是否默认接管 z= 的行为
                enabled = true,
                suggestions = 20
            }
        }
    }
)
