if not _G.Folders or not _G.Folders.UserBin then terminal:ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not writefileCooldown or not isfolder or not delfile then terminal:ResponseInTerminal("E: this package doesn't support this OS"); error() end
if not isfolder(_G.Folders.UserBin) then terminal:ResponseInTerminal("E: there's no directory for package"); error() end

local package_name = "roblox-utils"
local base_repo = "https://raw.githubusercontent.com/Breakfast-Dev/Alpha/main/apm/" .. package_name .."/"
local get_index = 2
local sources = {}
local totalsize = 0
local files = {
	"reset.lua", 
	"re.lua", 
	"rejoin.lua", 
	"rj.lua", 
	"shutdown.lua", 
	"sd.lua", 
	"kick.lua"
}
for _, file in pairs(files) do
	table.insert(sources, game:HttpGet(base_repo .. "files/" .. file))
	totalsize = totalsize + #game:HttpGet(base_repo .. "files/" .. file)
	terminal:ResponseInTerminal("Get:" .. get_index .." https://raw.githubusercontent.com/Breakfast-Dev/Alpha/main/apm/" .. package_name .. '/files/' .. file .. ' [' .. Utils.DecimalToByte(#game:HttpGet(base_repo .. "files/" .. file)) .. ']')
	get_index = get_index + 1
end
for i, file in pairs(files) do
	if isfile(_G.Folders.UserBin .. file) and readfile(_G.Folders.UserBin .. file) == sources[i] then
		delfile(_G.Folders.UserBin .. file)
	end
end
return Utils.DecimalToByte(totalsize)