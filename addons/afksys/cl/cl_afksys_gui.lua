hook.Add("HUDPaint", "afkSystemHUD", function()
	local ply = LocalPlayer()

	if (ply:isAFK()) then
		local text = "Type '!afk' again to return to the game."

		surface.SetFont("TargetID")
		local width, height = surface.GetTextSize(text)

		draw.RoundedBox(5, ScrW()/2-(width/2), 65, width+20, height+10, Color(0, 0, 0, 220))
		draw.DrawText(text, "TargetID", ScrW()/2+10, 70, Color(255, 255, 255), TEXT_ALIGN_CENTER)
	end
end)
