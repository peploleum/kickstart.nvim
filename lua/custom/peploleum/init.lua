-- NOTE: The following are specific to whatever work is in progress
local mappings = {}
-- Debugger keymaps
vim.keymap.set('n', '<leader>b', "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', '<F5>', "<cmd>lua require'dap'.continue()<CR>")
vim.keymap.set('n', '<F6>', "<cmd>lua require'dap'.step_over()<CR>")
vim.keymap.set('n', '<F7>', "<cmd>lua require'dap'.step_into()<CR>")
vim.keymap.set('n', '<leader>e', "<cmd>lua require'dapui'.eval()<CR>")
vim.keymap.set('v', '<leader>e', "<cmd>lua require'dapui'.eval()<CR>")

return mappings
