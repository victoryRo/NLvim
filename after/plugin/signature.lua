local cfg = {
    handler_opts = {
        border = "rounded"   -- double, rounded, single, shadow, none, or a table of borders
    },
}
require "lsp_signature".setup(cfg)
