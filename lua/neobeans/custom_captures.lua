local M = {}

M.set_custom_captures = function ()
    -- print "custom bla"
    require("nvim-treesitter.highlight").set_custom_captures {
        ["field_declaration"] = "TSFieldDefinition",
    }
end

return M
