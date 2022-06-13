local cmd = vim.cmd

--#region Treesiter
require 'nvim-treesitter.configs'.setup {
    highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
}
--#endregion

--#region FZF and telescope
vim.g.fzf_layout = { window = { width = 0.8, height = 0.8 } }
require('telescope').setup { defaults = { file_ignore_patterns = { ".git" } } }
--#endregion

--#region LuaLine
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = { 'neo-tree', 'Outline' },
        disabled_buftypes = {},
        always_divide_middle = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = { 'fzf', 'fugitive' }
}
--#endregion

--#region ALE
-- cmd [[ autocmd FileType python :normal zR ]]
-- vim.g.ale_python_executable = "python"
-- vim.g.ale_python_pylint_use_global = 1
-- cmd [[ let g:ale_python_isort_use_global = 1 ]]
-- cmd [[ let g:ale_linters={ 'python': ['pylint'] } ]]
-- -- cmd [[ let g:ale_linters={ 'go': ['gofmt'] } ]]
-- cmd [[ let g:ale_fixers = { 'python': ['black', 'isort'] } ]]
-- -- cmd [[ let g:ale_fixers = { 'go': ['gofmt'] } ]]
-- cmd [[ let g:ale_python_isort_options = '--profile black' ]]
-- cmd [[ highlight ALEWarning ctermfg=none cterm=underline ]]
-- cmd [[ highlight ALEErrorSign ctermbg=none ]]
-- cmd [[ highlight ALEWarningSign ctermbg=none ]]
--#endregion

--#region Fterm
require 'FTerm'.setup({
    border     = 'double',
    dimensions = {
        height = 0.9,
        width = 0.9,
    },
})
--#endregion

--#region NerdTree
vim.g.NerdTreeChDirMode = 2

vim.cmd [[
    let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
    let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*', 'neo-tree.*']
]]
--#endregion

--#region bufferline
require "bufferline".setup {
    options = {
        offsets = {
            { filetype = "neo-tree", text = '', padding = 1 },
            { filetype = "nerdtree", text = '', padding = 1 }
        },
        buffer_close_icon = "",
        modified_icon = "",
        close_icon = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        separator_style = "thin",
    }
}
--#endregion

--#region Null-ls
local status_ok, null_ls = pcall(require, 'null-ls')

if not status_ok then
    return
end

null_ls.setup({
    default_timeout = 20000,
    fallback_severity = vim.diagnostic.severity.INFO,
    sources = {
        -- //\\// Python //\\//
        null_ls.builtins.diagnostics.pylint,
        null_ls.builtins.diagnostics.mypy,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort.with({
            args = { "--stdout", "--filename", "$FILENAME", "-", "--profile", "black" }
        }),

        -- gofmt
        null_ls.builtins.formatting.gofmt
    }
})
--#endregion

--#region Smarts splits
require('smart-splits').setup({
    ignored_filetypes = {
        'nofile',
        'quickfix',
        'prompt',
    },
    ignored_buftypes = { 'NvimTree', 'NERDtree', 'nofile' },
    move_cursor_same_row = false,
    resize_mode_quit_key = '<ESC>',
    resize_mode_silent = false,
})
--#endregion

--#region
require('indent_blankline').setup {
    show_current_context = true,
    -- show_current_context_start = true,
}
--#endregion

--#region which-key
--#endregion
----# region quick-run
require('jaq-nvim').setup {
    -- Commands used with 'Jaq'
    cmds = {
        -- Default UI used (see `Usage` for options)
        default = "float",

        -- Uses external commands such as 'g++' and 'cargo'
        external = {
            typescript = "deno run %",
            javascript = "node %",
            markdown = "glow %",
            python = "python %",
            rust = "rustc % && ./$fileBase && rm $fileBase",
            cpp = "g++ % -o $fileBase && ./$fileBase",
            go = "go run %",
            sh = "sh %",
        },

        -- Uses internal commands such as 'source' and 'luafile'
        internal = {
            lua = "luafile %",
            vim = "source %"
        }
    },

    -- UI settings
    ui = {
        -- Start in insert mode
        startinsert = false,

        -- Switch back to current file
        -- after using Jaq
        wincmd = false,

        -- Floating Window / FTerm settings
        float = {
            -- Floating window border (see ':h nvim_open_win')
            border = "double",

            -- Num from `0 - 1` for measurements
            height = 0.8,
            width  = 0.8,
            x      = 0.5,
            y      = 0.5,

            -- Highlight group for floating window/border (see ':h winhl')
            border_hl = "FloatBorder",
            float_hl  = "Normal",

            -- Floating Window Transparency (see ':h winblend')
            blend = 0
        },

        terminal = {
            -- Position of terminal
            position = "bot",

            -- Open the terminal without line numbers
            line_no = false,

            -- Size of terminal
            size = 10
        },

        toggleterm = {
            -- Position of terminal, one of "vertical" | "horizontal" | "window" | "float"
            position = "horizontal",

            -- Size of terminal
            size = 10
        },

        quickfix = {
            -- Position of quickfix window
            position = "bot",

            -- Size of quickfix window
            size = 10
        }
    }
} 
--#endregion
--#region Symbols Outline

--#endregion
