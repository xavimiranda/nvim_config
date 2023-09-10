local dapui = require('dapui')
local dap = require('dap')
dapui.setup()


vim.keymap.set('n', '<leader>dt', dapui.toggle, { noremap = true })
vim.keymap.set('n', '<F5>', function() dap.continue() end)
vim.keymap.set('n', '<F10>', function() dap.step_over() end)
vim.keymap.set('n', '<F11>', function() dap.step_into() end)
vim.keymap.set('n', '<F12>', function() dap.step_out() end)
vim.keymap.set('n', '<F9>', function() dap.toggle_breakpoint() end)

vim.keymap.set('n', '<leader><F9>',
    function() dap.set_breakpoint( vim.fn.input('Condition: '))
    end)

vim.keymap.set('n', '<leader>dr', function()
    dapui.close(); dapui.open({ reset = true })
end)
vim.keymap.set('n', '<leader>dl', function() dap.run_last() end)

--------------------------python da -------------------------------------------
require('dap-python').setup('~/.virtualenvs/debugpy/Scripts/python')

--------------------------javascript da -------------------------------------------
local path = vim.fn.stdpath("data") .. "/lazy/vscode-js-debug"
require("dap-vscode-js").setup({
    -- node_path = "node", -- Path of node executable. Defaults to $NODE_PATH, and then "node"
    debugger_path = path, -- Path to vscode-js-debug installation.
    -- debugger_cmd = { "js-debug-adapter" }, -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
    adapters = { 'pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost' }, -- which adapters to register in nvim-dap
    -- log_file_path = "(stdpath cache)/dap_vscode_js.log" -- Path for file logging
    -- log_file_level = false -- Logging level for output to file. Set to false to disable file logging.
    -- log_console_level = vim.log.levels.ERROR -- Logging level for output to console. Set to false to disable console output.
})

for _, language in ipairs({ "typescript", "javascript" }) do
    dap.configurations[language] = {
        {
            type = "pwa-node",
            request = "launch",
            name = "Launch file",
            program = "${file}",
            cwd = "${workspaceFolder}",
        },
        {
            type = "pwa-node",
            request = "attach",
            name = "Attach",
            processId = require 'dap.utils'.pick_process,
            cwd = "${workspaceFolder}",
        }
    }
end
