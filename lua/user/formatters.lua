local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup({{exe = "lua-format", filetypes = {"lua"}}})
