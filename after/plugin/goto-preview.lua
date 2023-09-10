local gtp = require('goto-preview')
gtp.setup()

vim.keymap.set("n", "gpd", function() gtp.goto_preview_definition() end)
vim.keymap.set("n", "gpt", function() gtp.goto_preview_type_definition() end)
vim.keymap.set("n", "gpi", function() gtp.goto_preview_implementation() end)
vim.keymap.set("n", "gpr", function() gtp.goto_preview_references() end)
vim.keymap.set("n", "gP", function() gtp.close_all_win() end)
