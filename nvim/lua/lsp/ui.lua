vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  -- 在输入模式下也更新提示，设置为 true 也许会影响性能
  update_in_insert = true,
})
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- lspkind
local lspkind = require('lspkind')
local lspsaga = require('lspsaga')
lspsaga.init_lsp_saga { -- defaults ...
 border_style = 'single',
  saga_winblend = 0,
  -- when cusor in saga float window
  -- config these keys to move
  move_in_saga = {
    prev = '<C-p>',
    next = '<C-n>',
  },
  -- Error,Warn,Info,Hint
  diagnostic_header = { ' ', ' ', ' ', ' ' },
  -- code action title icon
  code_action_icon = '💡',
  -- if true can press number to execute the codeaction in codeaction window
  code_action_num_shortcut = true,
  code_action_lightbulb = {
    enable = true,
    enable_in_insert = true,
    cache_code_action = true,
    sign = true,
    update_time = 150,
    sign_priority = 40,
    virtual_text = true,
  },
  max_preview_lines = 40,
  scroll_in_preview = {
    scroll_down = '<C-d>',
    scroll_up = '<C-u>',
  },
  finder_icons = {
    def = ' ',
    imp = ' ',
    ref = ' ',
  },
  finder_request_timeout = 1500,
  finder_action_keys = {
    open = 'o',
    vsplit = 's',
    split = 'i',
    tabe = 't',
    quit = 'q',
  },
  code_action_keys = {
    quit = 'q',
    exec = '<CR>',
  },
  rename_action_quit = '<C-c>',
  rename_in_select = true,
  -- winbar must nightly
  symbol_in_winbar = {
    in_custom = false,
    enable = false,
    separator = ' ',
    show_file = true,
    click_support = false,
  },
  show_outline = {
    win_position = 'right',
    win_with = '',
    win_width = 30,
    auto_enter = true,
    auto_preview = true,
    virt_text = '┃',
    jump_key = 'o',
    auto_refresh = true,
  },
  custom_kind = {},
  server_filetype_map = {},
}

lspkind.init({
    -- default: true
    -- with_text = true,
    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',
    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',
    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})

local M ={}
-- 为 cmp.lua 提供参数格式
M.formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text',
      --mode = 'symbol', -- show only symbol annotations

      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        -- Source 显示提示来源
        vim_item.menu = "[" .. string.upper(entry.source.name) .. "]"
        return vim_item
      end
    })
}

return M
