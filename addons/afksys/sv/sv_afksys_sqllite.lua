if not (sql.TableExists("afksystem")) then
	sql.Query("CREATE TABLE afksystem (steamid TEXT, weapons TEXT, position TEXT)")
end

--[[-------------------------------------------------------------------------
Remove stored information when the player disconnects.
---------------------------------------------------------------------------]]
hook.Add("PlayerDisconnected", "afkSystemDisconnect", function(ply)
	sql.Query("DELETE FROM afksystem WHERE steamid = '" .. ply:SteamID64() .. "'")

	--[[local result = sql.Query("DELETE FROM afksystem WHERE steamid = '" .. ply:SteamID64() .. "'")
	if (result == false) then
		print("SQL Error: " .. sql.LastError())
	end]]
end)
