require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.9,
        width = 0.9,
    },
})

vim.g.NerdTreeChDirMode = 2


vim.cmd[[
    let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
    let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
]]
