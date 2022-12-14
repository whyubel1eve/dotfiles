require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "sumneko_lua", "rust_analyzer", "tsserver", "gopls", "solidity" }
})

require("lsp.config.lua")
require("lsp.config.rust")
require("lsp.config.ts")
require("lsp.config.go")
require("lsp.config.solidity")
