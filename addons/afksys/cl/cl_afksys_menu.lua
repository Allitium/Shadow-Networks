net.Receive("afkSystemMenu", function()
	local frame = vgui.Create("DFrame")
	frame:SetSize(300, 400)
	frame:SetTitle("Players that are currently AFK.")
	frame:SetDraggable(true)
	frame:SetScreenLock(true)
	frame:SetSizable(false)
	frame:ShowCloseButton(true)
	frame:Center()
	frame.btnMaxim:Hide()
	frame.btnMinim:Hide()
	frame:MakePopup()

	local playerList = vgui.Create("DListView", frame)
	playerList:Dock(FILL)
	playerList:SetMultiSelect(false)
	playerList:AddColumn("Name")
	playerList:AddColumn("Reason")
	playerList:AddColumn("Started")

	for k, v in pairs(player.GetAll()) do
		if (v:isAFK()) then
			playerList:AddLine(v:Nick(), v:afkReason(), os.date("%H:%M:%S" , v:afkStarted()))
		end
	end
end)
