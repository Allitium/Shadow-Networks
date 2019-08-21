local PLAYER = FindMetaTable("Player")

function PLAYER:isAFK()
	return self:GetNWBool("isAFK", false)
end

function PLAYER:afkReason()
	return self:GetNWBool("afkReason", "No reason provided.")
end

function PLAYER:afkStarted()
	return self:GetNWInt("afkStarted", os.time())
end
