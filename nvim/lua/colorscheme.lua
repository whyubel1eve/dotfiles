-- local colorscheme = "tokyonight"
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " 没有找到！")
--   return
-- end


vim.call('plug#end')

vim.cmd [[ 
      " Important!!
        if has('termguicolors')
          set termguicolors
        endif
        " The configuration options should be placed before `colorscheme sonokai`.
        let g:sonokai_style = 'andromeda'
        let g:sonokai_better_performance = 1
        let g:sonokai_enable_italic = 1
        let g:sonokai_diagnostic_text_highlight = 1
        let g:sonokai_diagnostic_line_highlight = 1
        let g:sonokai_diagnostic_virtual_text = 1
        colorscheme sonokai
]]

