require('neo-tree').setup({
   close_if_last_window = true,
   popup_border_style = 'rounded',
   use_git_status_colors = true,
   enable_diagnostics = false,
   enable_git_status = true,
   -- close_floats_on_escape_key = true,
    default_component_configs = {
      indent = {
        padding = 0,
        with_expanders = false,
      },
      icon = {
        folder_closed = "",
        folder_open = "",
        folder_empty = "",
        default = "",
      },
      git_status = {
        symbols = {
          added = "",
          deleted = "",
          modified = "",
          renamed = "➜",
          untracked = "★",
          ignored = "◌",
          unstaged = "✗",
          staged = "✓",
          conflict = "",
        },
        align = 'right'
      },
    },
    window = {
      width = 25,
      mappings = {
        ["o"] = "open",
      },
    },
    filesystem = {
      filtered_items = {
        visible = false,
        hide_dotfiles = true,
        hide_gitignored = false,
        hide_by_name = {
          ".DS_Store",
          "thumbs.db",
          "node_modules",
          "__pycache__",
        },
      },
      follow_current_file = true,
      hijack_netrw_behavior = "open_current",
      use_libuv_file_watcher = true,
    },
    git_status = {
      window = {
        position = "float",
      },
    },
    event_handlers = {
      {
        event = "vim_buffer_enter",
        handler = function(_)
          if vim.bo.filetype == "neo-tree" then
            vim.wo.signcolumn = "auto"
          end
        end,
      },
    },
})

vim.cmd 'highlight NeoTreeGitModified  guifg=#83a570'
    -- vim.cmd 'highlight NeoTreeGitModified  guifg=#83a590'
vim.cmd 'highlight NeoTreeGitAdded guifg=#b8bb26'

-- vim.cmd 'highlight NeoTreeGitModified ctermfg=159 guifg=#3B83BD'

