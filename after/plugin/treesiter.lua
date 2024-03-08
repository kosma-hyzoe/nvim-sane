require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "python",
                       "javascript", "typescript", "java", "html", "bash"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
}


vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('treesitter', {}),
  callback = function(ev)
    local parsers = require("nvim-treesitter.parsers")
    local lang = parsers.ft_to_lang(ev.match)

    if not parsers.has_parser(lang) then
      return true
    end

    local max_filesize = 100 * 1024 -- 100 KB
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(ev.buf))

    if ok and stats and stats.size > max_filesize then
      return true
    end

    vim.treesitter.start(ev.buf)
  end,
})
