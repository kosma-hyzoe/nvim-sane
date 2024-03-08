local builtin = require('telescope.builtin')
-- Essentials
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
-- Extras
vim.keymap.set('n', '<leader>ss', builtin.spell_suggest, {})
vim.keymap.set('n', '<leader>mp', builtin.man_pages, {})
vim.keymap.set('n', '<leader>tg', builtin.tags, {})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})
vim.keymap.set('n', '<leader>gs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
