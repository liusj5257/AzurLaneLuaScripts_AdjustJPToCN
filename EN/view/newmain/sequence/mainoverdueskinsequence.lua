slot0 = class("MainOverDueSkinSequence", import(".MainOverDueAttireSequence"))

slot0.Execute = function(slot0, slot1)
	if #getProxy(ShipSkinProxy):getOverDueSkins() > 0 then
		slot0:Display(SkinExpireDisplayPage, slot3, slot1)
	else
		slot1()
	end
end

return slot0
