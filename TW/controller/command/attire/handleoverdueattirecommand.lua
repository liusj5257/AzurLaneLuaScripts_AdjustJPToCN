slot0 = class("HandleOverDueAttireCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	if #getProxy(AttireProxy):getExpiredChaces() > 0 then
		slot0:sendNotification(GAME.HANDLE_OVERDUE_ATTIRE_DONE, slot3)
	end
end

return slot0
