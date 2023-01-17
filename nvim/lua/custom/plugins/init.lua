return {
  ["williamboman/mason.nvim"] = {
    override_options = {
      ensure_installed = {
        -- lua stuff
        "lua-language-server",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "json-lsp",

        -- shell
        "shfmt",
        "shellcheck",

        -- rust
        "rust-analyzer",

        -- go
        "gopls",
        "goimports",
      },
    },
  },
  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
        overriden_modules = function()
          return require "custom.plugins.statusline"
        end,
      },
      tabufline = {
        lazyload = false, -- to show tabufline by default
        overriden_modules = function()
          return require "custom.plugins.tabufline"
        end,
      },
    },
  },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["hrsh7th/nvim-cmp"] = {
    override_options = function()
      local cmp = require "cmp"

      return {
        mapping = {
          ["<C-k>"] = cmp.mapping.select_prev_item(),
          ["<C-j>"] = cmp.mapping.select_next_item(),
        },
      }
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = {
      ensure_installed = {
        "json",
        "html",
        "css",
        "lua",
        "javascript",
        "go",
        "rust",
        "cpp",
        "gitignore",
        "markdown",
        "solidity",
        "toml",
        "yaml",
      },
    },
  },
}
