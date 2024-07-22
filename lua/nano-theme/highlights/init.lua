local M = {}

function M.get (C, config)
    local final = {}

    for item, enable in pairs(config.modules) do
        if enable then
            local integration = require("nano-theme.highlights.".. item).get(C)
            final = vim.tbl_extend("force", final, integration)
        end
    end

    return final
end

return M
