require("todo-comments").setup(
    {
        keywords = {
             FIX = {
                icon = "",
                color = "#DC2626",
                alt = {"FIXME", "BUG", "FIXIT", "ISSUE", "!"}
            },

            TODO = {icon = "", color = "#10B981"},
            HACK = {icon = "", color = "#7C3AED"},
            WARN = {icon = "", color = "#FBBF24"},
            PERF = {icon = "", color = "#FC9868", alt = {"OPTIM", "PERFORMANCE", "OPTIMIZE"}},
            NOTE = {icon = "", color = "#2563EB", alt = {"INFO"}}
        }
    }
)
