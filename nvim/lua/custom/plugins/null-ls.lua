local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier,

  -- Lua
  b.formatting.stylua,

  -- Shell
  b.formatting.shfmt,
  b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  -- rust
  b.formatting.rustfmt,

  -- go
  b.formatting.goimports,
  b.formatting.gofmt,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
