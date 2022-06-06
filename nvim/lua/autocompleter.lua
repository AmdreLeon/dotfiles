-- Setup nvim-cmp.
vim.opt.completeopt = "menu,menuone,preview,noselect,noinsert"
local cmp = require'cmp'
local lspkind = require("lspkind")
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")
local select_opts = {behavior = cmp.SelectBehavior.Select}

cmp.setup({
	snippet = {
		-- REQUIRED - you must specify a snippet engine
		expand = function(args)
			-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
			-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
			-- require('snippy').expand_snippet(args.body) -- For `snippy` users.
			vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	mapping = {
        ["<Tab>"] = cmp.mapping(
        function(fallback)
            if cmp.visible() then
                cmp.confirm({select = true})
            else
                fallback()
            end
        end,
          { "i", "s"}),
        ["<S-Tab>"] = cmp.mapping(
          function(fallback)
            cmp_ultisnips_mappings.compose{ "expand", "jump_backwards" }(fallback)
          end,
          { "i", "s", }),
        ["<C-l>"] = cmp.mapping(
          function(fallback)
            cmp_ultisnips_mappings.compose{ "expand", "jump_forwards" }(fallback)
          end,
          { "i", "s", }),
        ["<C-h>"] = cmp.mapping(
          function(fallback)
            cmp_ultisnips_mappings.compose{ "expand", "jump_backwards" }(fallback)
          end,
          { "i", "s", }),
		['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 's' }),
		['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 's' }),
		['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 's' }),
        ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ select_opts }), {'i', 's'}),
        ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({select_opts }), {'i', 's'}),
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item({ select_opts }), {'i', 's'}),
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item({select_opts}), {'i', 's'}),
		['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		['<C-e>'] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	},
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		-- { name = 'vsnip' }, -- For vsnip users.
		-- { name = 'luasnip' }, -- For luasnip users.
		{ name = 'ultisnips' }, -- For ultisnips users.
		-- { name = 'snippy' }, -- For snippy users.
        { name = 'path' },
	}, {
		{ name = 'buffer' },
	}),
	formatting = {
		format = function(entry, vim_item)
		  vim_item.kind = lspkind.presets.default[vim_item.kind]
		  return vim_item
		end
	}
})
--}
