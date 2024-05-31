local M = {}

M.set_custom_signs = function ()
    -- dap debugger
    -- » ‣ → 
    vim.fn.sign_define('DapBreakpoint', { text='■', texthl='DapBreakpointSign', linehl='DapBreakpoint', numhl='' })
    vim.fn.sign_define('DapBreakpointCondition', { text='柳', texthl='DapBreakpointSign', linehl='DapBreakpoint', numhl='' })
    vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpointSign', linehl='DapBreakpoint', numhl= '' })
    vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPointSign', linehl='DapLogPoint', numhl= '' })
    vim.fn.sign_define('DapStopped', { text='»', texthl='DapStoppedSign', linehl='DapStopped', numhl= '' })
    vim.fn.sign_define('LightBulbSign', { text = "", texthl = "LightBulbSign", linehl="", numhl="" })

    -- Diagnostic
    local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = '' })
    end

end

return M
