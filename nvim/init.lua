require("plugins")
require("remap")

vim.cmd.colorscheme("nord")
vim.api.nvim_set_hl(0, "Normal", {bg = "none"} )
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none" })
vim.cmd.set("number")
vim.cmd([[hi SignColumn guibg=none]])
