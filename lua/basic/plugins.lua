---@diagnostic disable: undefined-global
-- https://github.com/wbthomason/packer.nvim
local packer = require("packer")
packer.startup(
    {
        -- 所有插件的安装都书写在 function 中
        function()
            -- 包管理器
            use {
                "wbthomason/packer.nvim"
            }

            -- 安装其它插件
            -- 中文文档
            use {
                "yianwillis/vimcdoc",
            }
            -- nvim-tree
            use {
                "kyazdani42/nvim-tree.lua",
                requires = {
                    "kyazdani42/nvim-web-devicons"
                },

                config = function()
                    require("config/nvim-tree")
                end
            }
            -- catppuccin 主题
            use{
                "catppuccin/nvim",
                -- 因为 这个插件的名称是nvim，可能会冲突这里改个别名
                as = "catppuccin",
                config = function()
                    -- 加载配置文件lua/config/cappuccin.lua
                    require("config/catppuccin")
                end
            }
            -- 状态栏 windline
            use {
                "windwp/windline.nvim",
                config = function()
                    -- 插件加载完成后自动运行 lua/conf/windline.lua 文件中的代码
                    require("config/windline")
                end
            }
            -- 显示git信息 gitsigns
            use {
                "lewis6991/gitsigns.nvim",
                requires = {
                    -- 依赖于该插件（一款 Lua 开发使用的插件）
                    "nvim-lua/plenary.nvim"
                },
                config = function()
                    require("config/gitsigns")
                end
            }
            -- 支持LSP的buffer栏
            use {
                "akinsho/bufferline.nvim",
                requires = {
                    "famiu/bufdelete.nvim" -- 删除 buffer 时不影响现有布局
                },
                config = function()
                    require("config/bufferline")
                end
            } 
            -- 搜索时显示条目 nvim-hlslens
            use {
                "kevinhwang91/nvim-hlslens",
                config = function()
                    require("config/nvim-hlslens")
                end
            }
            --显示缩进线 indent-blankline
            use {
                "lukas-reineke/indent-blankline.nvim",
            }
            -- 自动匹配括号 autopairs
            use{
                "windwp/nvim-autopairs",
                config = function()
                    require("config/nvim-autopairs")
                end
            }
        end,
        -- 使用浮动窗口
        config = {
            display = {
                open_fn = require("packer.util").float
            }
        }
    }
)
-- 实时生效配置
vim.cmd(
    [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
)
