if not _G.Folders or not _G.Folders.UserBin then terminal:ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not writefileCooldown or not isfolder or not delfile then terminal:ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not isfolder(_G.Folders.UserBin) then terminal:ResponseInTerminal("E: there's no directory for package"); error() end

local name = "test.lua"
local source = [==[
	print("The 'test' package successfully installed!")
]==]
if isfile(_G.Folders.UserBin .. name) and readfile(_G.Folders.UserBin .. name) == sources then
	delfile(_G.Folders.UserBin .. name)
end
return Utils.DecimalToByte(#source)