vim.cmd [[ 
    if exists("g:neovide")
        let g:neovide_refresh_rate=144
        let g:neovide_transparency=0.98
        let g:neovide_remember_window_size=v:true
        let g:neovide_remember_window_position=v:true
        let g:neovide_input_macos_alt_is_meta=v:true
        set clipboard=unnamed
    endif
]]
vim.opt.guifont = 'Fisa_Code:h21'
