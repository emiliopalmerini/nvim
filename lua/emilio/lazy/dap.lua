return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            {
                "leoluz/nvim-dap-go"
            },
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-telescope/telescope-dap.nvim",
        },
        config = function ()
            vim.keymap.set("n", "<F1>", ":lua require'dap'.continue()<CR>", {buffer=0})
            vim.keymap.set("n", "<F2>", ":lua require'dap'.step_over()<CR>", {buffer=0})
            vim.keymap.set("n", "<F3>", ":lua require'dap'.step_into()<CR>", {buffer=0})
            vim.keymap.set("n", "<F3>", ":lua require'dap'.step_out()<CR>", {buffer=0})
            vim.keymap.set("n", "<leader>b", ":lua require'dap'.toggle_breakpoint()<CR>", {buffer=0})
            vim.keymap.set("n", "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", {buffer=0})
            vim.keymap.set("n", "<leader>lp", ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>", {buffer=0})
            vim.keymap.set("n", "<leader>dr", ":lua require'dap'.repl.open()<CR>", {buffer=0})
        end
    }
}
