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

            -- 自动保存 autosave
            use{
                "Pocco81/AutoSave.nvim",
                config = function()
                    require("config/autosave")
                end
            }

            -- 自动回复光标位置 lastplace
            use{
                "ethanholz/nvim-lastplace",
                config = function()
                    require("config/nvim-lastplace")
                end
            }

            -- 会话管理 auto-session
            use{
                "rmagatti/auto-session",
                config = function()
                   require("config/auto-session")
                end
            }

            -- 全局搜索替换
            use{
                "nvim-pack/nvim-spectre",
                requires = {
                    "nvim-lua/plenary.nvim",
                    "BurntSushi/ripgrep"
                },
                config = function()
                    require("config/nvim-spectre")
                end
            }

            --添加右侧滚动条
            use{
                "petertriho/nvim-scrollbar",
                config = function()
                    require("config/nvim-scrollbar")
                end
            }

            -- 显示16进制颜色
            use{
                "norcalli/nvim-colorizer.lua",
                config = function()
                    require("config/nvim-colorizer")
                end
            }

            -- 终端 toggleterm
            use{
                "akinsho/toggleterm.nvim",
                config = function()
                    require("config/toggleterm")
                end
            }
            -- undo tree
            use{
                "mbbill/undotree",
                config = function()
                    require("config/undotree")
                end
            }
            -- 键位绑定器 which-key
            use{
                "folke/which-key.nvim",
                config = function()
                    require("config/which-key")
                end
            }
            -- 模糊查找文件
            use{
                "nvim-telescope/telescope.nvim",
                requires = {
                    "nvim-lua/plenary.nvim",
                    "BurntSushi/ripgrep",
                    "sharkdp/fd"
                },
                config = function()
                    require("config/telescope")
                end
            }

            -- 弹框
            use{
                "rcarriga/nvim-notify",
                config = function()
                    require("config/nvim-notify")
                end
            }

            -- 显示TODO注释
            use{
                "folke/todo-comments.nvim",
                config = function()
                    require("config/todo-comments")
                end
            }

            -- LSP 服务
            use{
                "neovim/nvim-lspconfig",
                config = function()
                    require("config/nvim-lspconfig")
                end
            }

            -- 自动安装 LSP
            use{
                "williamboman/nvim-lsp-installer",
                config = function()
                    require("config/nvim-lsp-installer")
                end
            }

            -- LSP UI 美化
            use{
                "tami5/lspsaga.nvim",
                config = function()
                    require("config/lspsaga")
                end
            }

            -- LSP 进度显示
            use{
                "j-hui/fidget.nvim",
                config = function()
                    require("config/fidget")
                end
            }

            -- 插入模式下获取函数签名
            use{
                "ray-x/lsp_signature.nvim",
                config = function()
                    require("config/lsp_signature")
                end
            }

            -- 灯泡提示代码行为
            use{
                "kosayoda/nvim-lightbulb",
                config = function()
                    require("config/nvim-lightbulb")
                end
            }

        -- 自动代码补全系列插件
        use {
            "hrsh7th/nvim-cmp",  -- 代码补全核心插件，下面都是增强补全的体验插件
            requires = {
                {"onsails/lspkind-nvim"}, -- 为补全添加类似 vscode 的图标
                {"hrsh7th/vim-vsnip"}, -- vsnip 引擎，用于获得代码片段支持
                {"hrsh7th/cmp-vsnip"}, -- 适用于 vsnip 的代码片段源
                {"hrsh7th/cmp-nvim-lsp"}, -- 替换内置 omnifunc，获得更多补全
                {"hrsh7th/cmp-path"}, -- 路径补全
                {"hrsh7th/cmp-buffer"}, -- 缓冲区补全
                {"hrsh7th/cmp-cmdline"}, -- 命令补全
                {"f3fora/cmp-spell"}, -- 拼写建议
                {"rafamadriz/friendly-snippets"}, -- 提供多种语言的代码片段
                {"lukas-reineke/cmp-under-comparator"}, -- 让补全结果的排序更加智能
                {"tzachar/cmp-tabnine", run = "./install.sh"} -- tabnine 源,提供基于 AI 的智能补全
            },
            config = function()
                require("config/nvim-cmp")
            end
        }

        -- 扩展lsp诊断
        use{
            "mfussenegger/nvim-lint",
            config = function ()
                require("config/nvim-lint")
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
