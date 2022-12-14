-- lua plugin
local packer = require("packer")
packer.startup(
    function(use)
        use 'wbthomason/packer.nvim'
        -- plugin list

        -- colorscheme
        use({
            'glepnir/zephyr-nvim',
            requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
        })
        -- nvim-tree
        use {
            'kyazdani42/nvim-tree.lua', requires = {
                'kyazdani42/nvim-web-devicons', -- optional, for file icons
            }, tag = 'nightly' -- optional, updated every week. (see issue #1193)
        }
        -- tabline
        use { 'kdheepak/tabline.nvim',
            requires = { { 'hoob3rt/lualine.nvim', opt = true },
                { 'kyazdani42/nvim-web-devicons', opt = true }, 'moll/vim-bbye' } }
        -- bufferline
        -- use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" } })
        -- lualine
        use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
        use("arkav/lualine-lsp-progress")
        -- telescope
        use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
        -- telescope extensions
        use "LinArcX/telescope-env.nvim"
        -- dashboard-nvim
        use("glepnir/dashboard-nvim")
        -- project
        use("ahmedkhalf/project.nvim")
        -- treesitter
        use {
            'nvim-treesitter/nvim-treesitter',
            run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
            'p00f/nvim-ts-rainbow',
        }
        -- lsp
        use {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
        }
        -- 补全引擎
        use("hrsh7th/nvim-cmp")
        -- snippet 引擎
        use("hrsh7th/vim-vsnip")
        -- 补全源
        use("hrsh7th/cmp-vsnip")
        use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
        use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
        use("hrsh7th/cmp-path") -- { name = 'path' }
        use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }

        -- 常见编程语言代码段
        use("rafamadriz/friendly-snippets")
        -- ui
        use("onsails/lspkind-nvim")

        -- indent-blankline
        use("lukas-reineke/indent-blankline.nvim")
        -- ui + keybinding
        use({
            "glepnir/lspsaga.nvim",
            branch = "main",
        })
        -- 代码格式化
        use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })
        -- rust-tools
        use("simrat39/rust-tools.nvim")
        -- autopairs
        use {
            "windwp/nvim-autopairs",
            config = function() require("nvim-autopairs").setup {} end
        }
        -- comment
        use {
            'numToStr/Comment.nvim',
            config = function()
                require('Comment').setup()
            end
        }
        -- git
        use {
            'lewis6991/gitsigns.nvim',
            config = function()
                require('gitsigns').setup()
            end
        }
    end)


-- autosave
pcall(
    vim.cmd,
    [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
