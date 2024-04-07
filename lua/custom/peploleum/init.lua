-- NOTE: The following are specific to whatever work is in progress
local mappings = {}

-- Terminal mode espace (works with tmux in WSL2)
vim.keymap.set('t', '<ESC><ESC>', '<C-\\><C-n>', { desc = 'Escape Terminal mode' })
-- Debugger keymaps
vim.keymap.set('n', '<leader>b', "<cmd>lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', '<F5>', "<cmd>lua require'dap'.continue()<CR>")
vim.keymap.set('n', '<F6>', "<cmd>lua require'dap'.step_over()<CR>")
vim.keymap.set('n', '<F7>', "<cmd>lua require'dap'.step_into()<CR>")
vim.keymap.set({ 'n', 'v' }, '<leader>e', "<cmd>lua require'dapui'.eval()<CR>")

-- Utilities remaps
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Refactoring mappings
vim.keymap.set('x', '<leader>re', function()
  require('refactoring').refactor 'Extract Function'
end)
vim.keymap.set('x', '<leader>rf', function()
  require('refactoring').refactor 'Extract Function To File'
end)
-- Extract function supports only visual mode
vim.keymap.set('x', '<leader>rv', function()
  require('refactoring').refactor 'Extract Variable'
end)
-- Extract variable supports only visual mode
vim.keymap.set('n', '<leader>rI', function()
  require('refactoring').refactor 'Inline Function'
end)
-- Inline func supports only normal
vim.keymap.set({ 'n', 'x' }, '<leader>ri', function()
  require('refactoring').refactor 'Inline Variable'
end)
-- Inline var supports both normal and visual mode

vim.keymap.set('n', '<leader>rb', function()
  require('refactoring').refactor 'Extract Block'
end)
vim.keymap.set('n', '<leader>rbf', function()
  require('refactoring').refactor 'Extract Block To File'
end)
-- Extract block supports only normal mode
--- prompt for a refactor to apply when the remap is triggered
vim.keymap.set({ 'n', 'x' }, '<leader>rr', function()
  require('refactoring').select_refactor { show_success_message = true }
end)
-- Note that not all refactor support both normal and visual mode
return mappings
