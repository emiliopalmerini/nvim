return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("tokyonight").setup({
            style = "storm",
            light_style = "day",
            transparent = false,
            terminal_colors = true,
            styles = {
                comments = { italic = true },
                keywords = { italic = true },
                functions = {},
                variables = {},
                sidebars = "dark",
                floats = "dark",
            },
            sidebars = { "qf", "help" },
            day_brightness = 0.3,
            hide_inactive_statusline = false,
            dim_inactive = false,
            lualine_bold = false,

            --- You can override specific color groups to use other groups or a hex color
            --- function will be called with a ColorScheme table
            -- ---@param colors ColorScheme
            -- on_colors = function(colors) end,

            --- You can override specific highlights to use other groups or a hex color
            --- function will be called with a Highlights and ColorScheme table
            -- ---@param highlights Highlights
            -- ---@param colors ColorScheme
            -- on_highlights = function(highlights, colors) end,
        })
        vim.cmd([[colorscheme tokyonight]])
        vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
        vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
        vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })
    end,
}

