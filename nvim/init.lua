 require('basic')
 require('keybindings')
 require('plugins')
 require('colorscheme')

 require('plugin-config.nvim-tree')
 require('plugin-config.bufferline')
 require('plugin-config.lualine')
 require('plugin-config.telescope')
 require('plugin-config.dashboard')
 require('plugin-config.project')
 require('plugin-config.nvim-treesitter')
 require('plugin-config.indent-blankline')

 require('lsp.setup')
 require('lsp.cmp')
 require('lsp.ui')
 require('lsp.null-ls')

vim.cmd [[ 
    if exists("g:neovide")
        let g:neovide_refresh_rate=143
        let g:neovide_transparency=0.98
        let g:neovide_remember_window_size = v:true
        let g:neovide_input_macos_alt_is_meta=v:true
        set clipboard=unnamed
    endif
]]
vim.opt.guifont = 'Fisa_Code:h21'
