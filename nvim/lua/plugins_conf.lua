local cmd = vim.cmd
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

cmd [[ autocmd FileType python :normal zR ]]
vim.g.ale_python_executable = "python"
vim.g.ale_python_pylint_use_global = 1
cmd [[ let g:ale_python_isort_use_global = 1 ]]
cmd [[ let g:ale_linters={ 'python': ['pylint'] } ]]
cmd [[ let g:ale_fixers = { 'python': ['black', 'isort'] } ]]
cmd [[ let g:ale_python_isort_options = '--profile black' ]]
cmd [[ highlight ALEWarning ctermfg=none cterm=underline ]]
cmd [[ highlight ALEErrorSign ctermbg=none ]]
cmd [[ highlight ALEWarningSign ctermbg=none ]]

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
