local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file)
vim.keymap.set("n", "<leader>hh", ui.toggle_quick_menu)

vim.keymap.set("n", "<leader>hu", function() ui.nav_file(1) end)
vim.keymap.set("n", "<leader>hi", function() ui.nav_file(2) end)
vim.keymap.set("n", "<leader>hy", function() ui.nav_file(3) end)
vim.keymap.set("n", "<leader>ho", function() ui.nav_file(4) end)
