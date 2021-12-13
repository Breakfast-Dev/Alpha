if not _G.Folders or not _G.Folders.UserBin then ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not writefileCooldown or not isfolder or not delfile then ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not isfolder(_G.Folders.UserBin) then ResponseInTerminal("E: there's no directory for package"); error() end

local package_name = "roblox-utils"
local base_repo = "https://raw.githubusercontent.com/Breakfast-Dev/Alpha/main/apm/" .. package_name .."/"
local get_index = 2
local files = {
	"rejoin.lua", 
	"reset.lua", 
}
for _, file in pairs(files) do
	ResponseInTerminal("Get:" .. get_index .." https://raw.githubusercontent.com/Breakfast-Dev/Alpha/main/apm/" .. package_name .. '/files/' .. file)
end
for _, file in pairs(files) do
	writefileCooldown(_G.Folders.UserBin .. name, game:HttpGet(base_repo .. "files/" .. file))
end