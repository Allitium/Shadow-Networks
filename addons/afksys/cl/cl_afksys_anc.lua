net.Receive("afkSystemAnnounce", function()
	local ply = net.ReadEntity()
	local reason = net.ReadString()

	if (reason == "") then
		chat.AddText(Color(255, 255, 255), ply:Nick() .. " has returned to the game.")
	elseif (ply:isAFK()) then
		chat.AddText(Color(255, 255, 255), ply:Nick() .. " has updated their AFK status.", Color(66, 185, 244), " (" .. reason .. ")")
	else
		chat.AddText(Color(255, 255, 255), ply:Nick() .. " is now AFK.", Color(66, 185, 244), " (" .. reason .. ")")
	end
end)
