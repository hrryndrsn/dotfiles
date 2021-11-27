--nvim-dap debugger config
-- https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation#ccrust-via-lldb-vscode
-- https://lldb.llvm.org/status/releases.html
--
-- Adapters
local dap = require('dap')
dap.adapters.lldb = {
  type = 'executable',
  command = '/usr/bin/lldb-vscode-13', -- adjust as needed
  name = "lldb"
}
-- -- Configurations
dap.configurations.rust = {
  {
      name = "debug",
    type = "lldb",
    request = "launch",
    cargo = {
        args = { "run", "--bin", "ws_latency_logger", "--", "bianance_usdt" }
    },
    -- program = '${cargo:program}',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = true,
  },
}

-- dap.configurations.rust = require('dap.ext.vscode').load_launchjs()
--dap.configurations.cpp = {
--  {
--    name = "Launch",
--    type = "lldb",
--    request = "launch",
--    program = function()
--      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
--    end,
--    cwd = '${workspaceFolder}',
--    stopOnEntry = false,
--    args = {},

--    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
--    --
--    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
--    --
--    -- Otherwise you might get the following error:
--    --
--    --    Error on launch: Failed to attach to the target process
--    --
--    -- But you should be aware of the implications:
--    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
--    runInTerminal = false,
--  },
--}

--   :lua require'dap'.launch



-- If you want to use this for rust and c, add something like this:

