if not _G.Folders or not _G.Folders.UserBin then ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not writefileCooldown or not isfolder or not delfile then ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not isfolder(_G.Folders.UserBin) then ResponseInTerminal("E: there's no directory for package"); error() end

local name = "test.lua"
delfile(_G.Folders.UserBin .. name)