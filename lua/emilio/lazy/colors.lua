return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme 'tokyonight-storm'
        vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
        vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
        vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })
        require("tokyonight").setup({
            style = "storm",
            light_style = "day",
            transparent = true,
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
        })
    end,
}

