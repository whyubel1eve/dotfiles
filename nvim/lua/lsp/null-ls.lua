local status, null_ls = pcall(require, 'null-ls')
if not status then
    vim.notify('null-ls not found')
    return
end

local formatting = null_ls.builtins.formatting

null_ls.setup({
    debug = false,
    sources = {
        -- Formatting ---------------------
        --  brew install shfmt
        formatting.shfmt,
        -- gofmt
        formatting.gofmt,
        -- goimports
        formatting.goimports,
        -- rust
        formatting.rustfmt,
        -- frontend
        formatting.prettier.with({
            filetypes = {
                'javascript',
                'javascriptreact',
                'typescript',
                'typescriptreact',
                'vue',
                'css',
                'scss',
                'less',
                'html',
                'json',
                'yaml',
                'graphql',
            },
            prefer_local = 'node_modules/.bin',
        }),
    },

    -- 保存自动格式化
    on_attach = function(client)
        if client.server_capabilities.document_formatting then
            vim.cmd('autocmd BufWritePre <buffer> lua vim.lsp.buf.format()')
        end
    end,
})
