vim.cmd [[ 
    if exists("g:neovide")
        let g:neovide_refresh_rate=144
        let g:neovide_transparency=0.95
        let g:neovide_remember_window_size=v:true
        let g:neovide_remember_window_position=v:true
        set clipboard=unnamed
    endif
]]
vim.opt.guifont = 'Fisa_Code:h16'
