if not _G.Folders and not _G.Folders.UserBin then ResponseInTerminal("E: this package doesn't support this OS"); return end
if not writefileCooldown and not isfolder then ResponseInTerminal("E: this package doesn't support this OS"); return emd
if not isfolder(_G.Folders.UserBin) then ResponseInTerminal("E: there's no directory for package")

	local name = "test.lua"
	local source = [==[
		print("HelloWorld")
	]==]
	
writefileCooldown(_G.Folders.UserBin .. name, source)