if not _G.Folders or not _G.Folders.UserBin then ResponseInTerminal("E: this package doesn't support this OS"); return end
if not writefileCooldown or not isfolder or not delfile then ResponseInTerminal("E: this package doesn't support this OS"); return end
if not isfolder(_G.Folders.UserBin) then ResponseInTerminal("E: there's no directory for package") end

	local name = "test.lua"
	local source = [==[
		print("HelloWorld")
	]==]

writefileCooldown(_G.Folders.UserBin .. name, source)