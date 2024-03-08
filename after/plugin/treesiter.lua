require 'nvim-treesitter.configs'.setup {
    sync_install = false, auto_install = true,
    ensure_installed = {
        -- Essentials
        'c', 'lua', 'vim', 'vimdoc', 'python', 'markdown', 'bash',
        -- Extras
        'javascript', 'typescript', 'java', 'html',
    },

    highlight = {
        -- Gets enabled in the FileType autocommand below
        enable = false,
        additional_vim_regex_highlighting = false
    },
}


-- Fix for errors on "Found a swap file" events. This
vim.api.nvim_create_autocmd('FileType', {
group = vim.api.nvim_create_augroup('treesitter', {}),
callback = function(ev)
  local max_filesize = 100 * 1024 -- 100 KB
  local parsers = require("nvim-treesitter.parsers")
  local lang = parsers.ft_to_lang(ev.match)

  if not parsers.has_parser(lang) then return end

  local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(ev.buf))
  if ok and stats and stats.size > max_filesize then return end

  vim.treesitter.start(ev.buf)
end,
})
