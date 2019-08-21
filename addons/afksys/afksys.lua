local version = 222

AddCSLuaFile("autorun/client/cl_announce.lua")
AddCSLuaFile("autorun/client/cl_hud.lua")
AddCSLuaFile("autorun/client/cl_menu.lua")

AddCSLuaFile("autorun/shared/sh_functions.lua")
include("autorun/shared/sh_functions.lua")

hook.Add("PlayerConnect", "afkSystemVersionCheck", function()
	http.Fetch("https://raw.githubusercontent.com/viral32111/simple-afk-system/master/README.md", function(body, size, headers, code)
		local latestVersion = tonumber(string.sub(body, string.len("Simple AFK System")+18, string.len("Simple AFK System")+21))

		if (latestVersion != version) then
			print("[Simple AFK System] Please update the addon to version: " .. latestVersion .. ". You are running version: " .. version .. ".")
		end
	end, function(error)
		print("[Simple AFK System] Failed to get addon version! (" .. error .. ")")
	end )

	hook.Remove("PlayerConnect", "afkSystemVersionCheck")
end )

print("[Simple AFK System] Loaded Version: " .. version)
