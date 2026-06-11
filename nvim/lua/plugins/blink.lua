return {
    'saghen/blink.cmp',
    dependencies = {
        'saghen/blink.lib',
    },
    build = function()
        require('blink.cmp').build():pwait()
    end,

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        -- Global engine safety switch
        enabled = function()
            -- Find all active LSPs attached to the current buffer named "tailwindcss"
            local tailwind_active = vim.lsp.get_clients({ name = "tailwindcss", bufnr = 0 })

            -- Only enable blink if the Tailwind LSP is active in this file
            return #tailwind_active > 0
        end,

        keymap = { preset = 'default' },

        completion = { documentation = { auto_show = true } },

        sources = {
            -- Stripped down strictly to LSP items
            default = { 'lsp' },

            providers = {
                lsp = {
                    transform_items = function(_, items)
                        return vim.tbl_filter(function(item)
                            return item.client_name == "tailwindcss"
                        end, items)
                    end
                }
            }
        },
        fuzzy = { implementation = "rust" }
    },
}

-- return {
--     'saghen/blink.cmp',
--     dependencies = {
--         'saghen/blink.lib',
--     },
--     build = function()
--         -- build the fuzzy matcher, optionally add a timeout to `pwait(timeout_ms)`
--         -- you can use `gb` in `:Lazy` to rebuild the plugin as needed
--         require('blink.cmp').build():pwait()
--     end,
-- 
--     ---@module 'blink.cmp'
--     ---@type blink.cmp.Config
--     opts = {
--         -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
--         -- 'super-tab' for mappings similar to vscode (tab to accept)
--         -- 'enter' for enter to accept
--         -- 'none' for no mappings
--         --
--         -- All presets have the following mappings:
--         -- C-space: Open menu or open docs if already open
--         -- C-n/C-p or Up/Down: Select next/previous item
--         -- C-e: Hide menu
--         -- C-k: Toggle signature help (if signature.enabled = true)
--         --
--         -- See :h blink-cmp-config-keymap for defining your own keymap
--         keymap = { preset = 'default' },
-- 
--         -- (Default) Only show the documentation popup when manually triggered
--         completion = { documentation = { auto_show = true } },
-- 
--         -- (Default) list of enabled providers defined so that you can extend it
--         -- elsewhere in your config, without redefining it, due to `opts_extend`
--         sources = {
--             default = { 'lsp', 'path', 'snippets', 'buffer' },
-- 
--             providers = {
--                 lsp = {
--                     transform_items = function(ctx, items)
--                         return vim.tbl_filter(function(item)
--                             return item.client_name == "tailwindcss"
--                         end, items)
--                     end
--                 }
--             }
-- 
--         },
--         -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
--         -- You may use a lua implementation instead by using `implementation = "lua"`
--         -- See the fuzzy documentation for more information
--         fuzzy = { implementation = "rust" }
--     },
-- }
