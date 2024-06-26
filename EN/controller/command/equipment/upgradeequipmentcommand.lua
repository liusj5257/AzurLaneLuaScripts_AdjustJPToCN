slot0 = class("UpGradeEquipmentCommands", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot2 = slot1:getBody()
	slot4 = slot2.pos
	slot5 = slot2.equipmentId
	slot6 = nil

	if slot2.shipId then
		assert(getProxy(BayProxy):getShipById(slot3):getEquip(slot4), "can not find equipment at ship.")
	else
		assert(getProxy(EquipmentProxy):getEquipmentById(slot5), "can not find equipment: " .. slot5)
	end

	if not Equipment.canUpgrade(slot6.configId) then
		pg.TipsMgr.GetInstance():ShowTips(i18n("equipment_max_level"))

		return
	end

	pg.ConnectionMgr.GetInstance():Send(slot3 and 14002 or 14004, slot3 and {
		ship_id = slot3,
		pos = slot4
	} or {
		type = 0,
		equip_id = slot5
	}, slot3 and 14003 or 14005, function (slot0)
		if slot0.result == 0 then
			slot2 = getProxy(BagProxy)
			slot4 = getProxy(PlayerProxy)
			slot5, slot6 = nil
			slot7 = slot4:getData()

			slot7:consume({
				gold = ((not uv0 or getProxy(BayProxy):getShipById(uv0):getEquip(uv1)) and getProxy(EquipmentProxy):getEquipmentById(uv2)):getConfig("trans_use_gold")
			})
			slot4:updatePlayer(slot7)

			for slot13, slot14 in ipairs(slot6:getConfig("trans_use_item")) do
				slot2:removeItemById(slot14[1], slot14[2])
			end

			slot10 = slot6:MigrateTo(slot6:getConfig("next"))

			if slot5 then
				slot5:updateEquip(uv1, slot10)
				slot1:updateShip(slot5)
			elseif slot6 then
				slot3:removeEquipmentById(slot6.id, 1)
				slot3:addEquipmentById(slot10.id, 1, true)
			end

			uv3:sendNotification(GAME.UPGRADE_EQUIPMENTS_DONE, {
				ship = slot5,
				equip = slot6,
				newEquip = slot10
			})
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("equipment_upgrade_erro", slot0.result))
		end
	end)
end

return slot0
