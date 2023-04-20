vim.cmd [[packadd packer.nvim]]
return require("packer").startup(
    function()
        use ("wbthomason/packer.nvim")

        --主题颜色
       use ("folke/tokyonight.nvim")

        --树目录( nvim-tree )
        use ({
            "kyazdani42/nvim-tree.lua",
            requires = "kyazdani42/nvim-web-devicons",
            config = function()
                require('nvim-tree').setup{}
            end
        })

        --项目导航栏( bufferline )
            -- commit = "36b44679f7cc73968dbb3b09246798a19f7c14e0"
        use ({
            "akinsho/bufferline.nvim",
            requires = {
                "kyazdani42/nvim-web-devicons",
                -- "moll/vim-bbye" 
            },
            config = function()
                require("bufferline").setup{}
            end
        })

        --状态栏( lualine )
        use ({
            "nvim-lualine/lualine.nvim",
            requires = {
                "kyazdani42/nvim-web-devicons"
            },
        })
        use ("arkav/lualine-lsp-progress")

        --注释，多行注释
        use ({
            "numToStr/Comment.nvim",
            config = function()
                require('Comment').setup()
            end
        })

        -- 自动补全括号
        use ("jiangmiao/auto-pairs")

        -- markdown-preview
        use ({
            "iamcco/markdown-preview.nvim",
            run = function() vim.fn["mkdp#util#install"]() end,
        })
        --vim-table-mode
        use ("dhruvasagar/vim-table-mode")


        -- Dashboard 
        use ({
            "goolord/alpha-nvim",
            requires = { "kyazdani42/nvim-web-devicons" },
            config = function()
                require 'alpha'.setup(require'alpha.themes.startify'.config)
            end
        })


        -- 对齐缩进
        use ({
            "lukas-reineke/indent-blankline.nvim",
            config = function()
                require("indent_blankline").setup {
                    char = "┊",
                    buftype_exclude = { "terminal" },
                }
            end,
        })
        
        -- vim surround
        use ("tpope/vim-surround")

        --语言服务协议(Lsp config)
        use ("williamboman/nvim-lsp-installer")
        use ("neovim/nvim-lspconfig")
        use ("hrsh7th/nvim-cmp")
        use ("hrsh7th/cmp-nvim-lsp")
        use ("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
        use ("L3MON4D3/LuaSnip") -- Snippets plugin
        use ("hrsh7th/cmp-buffer")
        use ("hrsh7th/cmp-path")
        use ("hrsh7th/cmp-nvim-lua")

        -- lspsaga beautify thr windows of lsp
        use ({
            "tami5/lspsaga.nvim",
            config = function()
                -- require('conf.lspsaga-conf')
                require('lspsaga').setup{}
            end
        })

    end
)
