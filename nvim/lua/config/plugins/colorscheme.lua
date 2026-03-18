-- Enable any one colorscheme at a time

-- Catppuccin colorscheme
-- return {
--     {
--         "catppuccin/nvim",
--         name = "catppuccin",
--         priority = 1000,
--         config = function()
--             vim.cmd.colorscheme "catppuccin"
--         end,
--     }
-- }

-- Dracula colorscheme
-- return {
--     {
--         "Mofiqul/dracula.nvim",
--         config = function()
--             vim.cmd.colorscheme "dracula"
--         end
--     },
-- }

-- Gruvbox colorscheme
-- return {
--     "ellisonleao/gruvbox.nvim",
--     priority = 1000,
--     config = true,
--     opts = ...,
--     config = function()
--         vim.cmd.colorscheme "gruvbox"
--     end
-- }

-- Gruvbox-Material colorscheme
-- return {
--     {
--         "sainnhe/gruvbox-material",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             -- Optionally configure and load the colorscheme
--             -- directly inside the plugin declaration.
--             vim.g.gruvbox_material_enable_italic = true
--             vim.cmd.colorscheme('gruvbox-material')
--         end
--     }
-- }

-- Kanagawa colorscheme
-- return {
--     {
--         "rebelot/kanagawa.nvim",
--         config = function()
--             require('kanagawa').setup({
--                 compile = true,
--                 transparent = false,
--                 theme = "wave",    -- Load "wave" theme
--                 background = {     -- map the value of 'background' option to a theme
--                     dark = "wave", -- try "dragon" !
--                     light = "lotus"
--                 },
--             })
--             -- setup must be called before loading
--             vim.cmd("colorscheme kanagawa");
--         end,
--         build = function()
--             vim.cmd("KanagawaCompile");
--         end,
--     }
-- }

-- OneDarkPro colorscheme
return {
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000, -- Ensure it loads first
        config = function()
            vim.cmd("colorscheme onedark")
        end,
    },
}

-- Rose-Pine colorscheme
-- return {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     config = function()
--         vim.cmd("colorscheme rose-pine")
--     end
-- }

-- Solarized colorscheme
-- return {
--     'maxmx03/solarized.nvim',
--     lazy = false,
--     priority = 1000,
--     ---@type solarized.config
--     opts = {},
--     config = function(_, opts)
--         vim.o.termguicolors = true
--         vim.o.background = 'light'
--         require('solarized').setup(opts)
--         vim.cmd.colorscheme 'solarized'
--     end,
-- }

-- Tokyonight colorscheme
-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {},
--     config = function()
--         vim.cmd.colorscheme "tokyonight"
--     end
-- }
