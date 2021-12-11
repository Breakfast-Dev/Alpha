if not _G.Folders or not _G.Folders.UserBin then ResponseInTerminal("E: this package doesn't support this OS"); return end
if not writefileCooldown or not isfolder or not delfile then ResponseInTerminal("E: this package doesn't support this OS"); return emd
if not isfolder(_G.Folders.UserBin) then ResponseInTerminal("E: there's no directory for package")

local name = "test.lua"
delfile(_G.Folders.UserBin .. name)