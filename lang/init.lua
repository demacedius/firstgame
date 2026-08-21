local M = {}
M.current = "fr"

function M.set(langCode)
    M.current = langCode
    M.strings = require("lang" .. langCode)
end

M.set(M.current)
return M