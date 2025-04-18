slot0 = class("BuildShipCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot2 = slot1:getBody()
	slot6, slot7, slot8 = BuildShip.canBuildShipByBuildId(slot2.buildId, slot2.count or 1, slot2.isTicket)

	if not slot6 then
		if slot8 then
			GoShoppingMsgBox(i18n("switch_to_shop_tip_1"), ChargeScene.TYPE_ITEM, slot8)
		else
			pg.TipsMgr.GetInstance():ShowTips(slot7)
		end

		return
	end

	slot9 = pg.ConnectionMgr.GetInstance()

	slot9:Send(12002, {
		id = slot3,
		count = slot4,
		costtype = slot5 and 1 or 0
	}, 12003, function (slot0)
		if slot0.result == 0 then
			pg.TrackerMgr.GetInstance():Tracking(TRACKING_BUILD_SHIP, uv0)

			slot1 = pg.ship_data_create_material[uv1]

			if uv2 then
				slot2 = getProxy(ActivityProxy)
				slot3 = slot2:getBuildFreeActivityByBuildId(uv1)
				slot3.data1 = slot3.data1 - uv0

				slot2:updateActivity(slot3)
			else
				getProxy(BagProxy):removeItemById(slot1.use_item, slot1.number_1 * uv0)

				slot3 = getProxy(PlayerProxy)
				slot4 = slot3:getData()

				slot4:consume({
					gold = slot1.use_gold * uv0
				})
				slot3:updatePlayer(slot4)
			end

			slot2 = getProxy(BuildShipProxy)

			if slot1.exchange_count > 0 then
				slot2:changeRegularExchangeCount(uv0 * slot1.exchange_count)
			end

			for slot6, slot7 in ipairs(slot0.build_info) do
				slot2:addBuildShip(BuildShip.New(slot7))
			end

			uv3:sendNotification(GAME.BUILD_SHIP_DONE)
			pg.TipsMgr.GetInstance():ShowTips(i18n("ship_buildShipMediator_startBuild"))
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("ship_buildShip_error", slot0.result))
		end
	end)
end

return slot0
