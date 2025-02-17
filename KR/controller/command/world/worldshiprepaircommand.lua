slot0 = class("WorldShipRepairCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot2 = slot1:getBody()
	slot3 = slot2.shipIds

	if nowWorld():GetInventoryProxy():GetItemCount(WorldItem.MoneyId) < slot2.totalCost then
		pg.TipsMgr.GetInstance():ShowTips(i18n("common_no_item_1"))

		return
	end

	slot8 = pg.ConnectionMgr.GetInstance()

	slot8:Send(33407, {
		ship_list = slot3
	}, 33408, function (slot0)
		if slot0.result == 0 then
			_.each(uv0, function (slot0)
				slot1 = uv0:GetShip(slot0)

				assert(slot1, "ship not exist: " .. slot0)
				slot1:Repair()
			end)
			uv2:RemoveItem(WorldItem.MoneyId, uv3)
			uv4:sendNotification(GAME.WORLD_SHIP_REPAIR_DONE, {
				shipIds = uv0
			})
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("world_ship_repair_err_", slot0.result))
		end
	end)
end

return slot0
