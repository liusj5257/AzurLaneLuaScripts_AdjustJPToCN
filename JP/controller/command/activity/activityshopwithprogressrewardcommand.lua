slot0 = class("ActivityShopWithProgressRewardCommand", pm.SimpleCommand)
slot0.SHOW_SHOP_REWARD = "ActivityShopWithProgressRewardCommand Show shop reward"

slot0.execute = function(slot0, slot1)
	assert(getProxy(ActivityProxy):getActivityById(slot1:getBody().activity_id):getConfig("type") == ActivityConst.ACTIVITY_TYPE_SHOP_PROGRESS_REWARD, "Operation Cant Fit ActivityType " .. slot4)

	if slot4 == ActivityConst.ACTIVITY_TYPE_SHOP_PROGRESS_REWARD then
		if slot2.cmd == 1 then
			slot6 = pg.activity_shop_template[slot2.arg1]

			if getProxy(PlayerProxy):getData()[id2res(slot6.resource_type)] < slot6.resource_num * (slot2.arg2 or 1) then
				pg.TipsMgr.GetInstance():ShowTips(i18n("common_no_resource"))

				return
			end

			if slot6.commodity_type == 1 then
				if slot6.commodity_id == 1 and slot5:GoldMax(slot6.num * slot7) then
					pg.TipsMgr.GetInstance():ShowTips(i18n("gold_max_tip_title") .. i18n("resource_max_tip_shop"))

					return
				end

				if slot6.commodity_id == 2 and slot5:OilMax(slot6.num * slot7) then
					pg.TipsMgr.GetInstance():ShowTips(i18n("oil_max_tip_title") .. i18n("resource_max_tip_shop"))

					return
				end
			end
		elseif slot2.cmd == 2 and table.contains(slot3.data3_list, slot2.arg1) then
			pg.TipsMgr.GetInstance():ShowTips(i18n("common_count_noenough"))

			return
		end
	end

	slot5 = pg.ConnectionMgr.GetInstance()

	slot5:Send(11202, {
		activity_id = slot2.activity_id,
		cmd = slot2.cmd,
		arg1 = slot2.arg1,
		arg2 = slot2.arg2,
		arg_list = {}
	}, 11203, function (slot0)
		if slot0.result == 0 then
			slot1 = uv0:getAwards(uv1, slot0)

			uv0:performance(uv1, slot0, uv0:updateActivityData(uv1, slot0, getProxy(ActivityProxy):getActivityById(uv1.activity_id), slot1), slot1)
		else
			print("activity op ret code: " .. slot0.result)

			if slot0.result == 3 or slot0.result == 4 then
				pg.TipsMgr.GetInstance():ShowTips(i18n("common_activity_end"))
			else
				pg.TipsMgr.GetInstance():ShowTips(errorTip("activity_op_error", slot0.result))
			end

			uv0:sendNotification(ActivityProxy.ACTIVITY_OPERATION_ERRO, {
				actId = uv1.activity_id,
				code = slot0.result
			})
		end
	end)
end

slot0.getAwards = function(slot0, slot1, slot2)
	slot3 = {}

	for slot7, slot8 in ipairs(slot2.award_list) do
		table.insert(slot3, {
			type = slot8.type,
			id = slot8.id,
			number = slot8.number
		})
	end

	slot4 = PlayerConst.addTranDrop(slot3)

	for slot8, slot9 in ipairs(slot3) do
		if slot9.type == DROP_TYPE_SHIP and not getProxy(CollectionProxy):getShipGroup(pg.ship_data_template[slot9.id].group_type) and Ship.inUnlockTip(slot9.id) then
			pg.TipsMgr.GetInstance():ShowTips(i18n("collection_award_ship", slot10.name))
		end
	end

	if slot1.isAwardMerge then
		slot5 = {}
		slot6 = nil

		for slot10, slot11 in ipairs(slot4) do
			if (function ()
				for slot3, slot4 in ipairs(uv0) do
					if uv1.id == slot4.id then
						uv0[slot3].count = uv0[slot3].count + uv1.count

						return false
					end
				end

				return true
			end)() then
				table.insert(slot5, slot11)
			end
		end

		slot4 = slot5
	end

	return slot4
end

slot0.updateActivityData = function(slot0, slot1, slot2, slot3, slot4)
	slot6 = getProxy(PlayerProxy)
	slot7 = getProxy(TaskProxy)

	if slot3:getConfig("type") == ActivityConst.ACTIVITY_TYPE_SHOP_PROGRESS_REWARD then
		if slot1.cmd == 1 then
			if table.contains(slot3.data1_list, slot1.arg1) then
				for slot11, slot12 in ipairs(slot3.data1_list) do
					if slot12 == slot1.arg1 then
						slot3.data2_list[slot11] = slot3.data2_list[slot11] + slot1.arg2

						break
					end
				end
			else
				table.insert(slot3.data1_list, slot1.arg1)
				table.insert(slot3.data2_list, slot1.arg2)
			end

			slot8 = pg.activity_shop_template[slot1.arg1]
			slot10 = slot6:getData()

			slot10:consume({
				[id2res(slot8.resource_type)] = slot8.resource_num * slot1.arg2
			})
			slot6:updatePlayer(slot10)
		elseif slot1.cmd == 2 then
			table.insert(slot3.data3_list, slot1.arg1)
		end
	end

	return slot3
end

slot0.performance = function(slot0, slot1, slot2, slot3, slot4)
	slot0:sendNotification(uv0.SHOW_SHOP_REWARD, {
		activityId = slot1.activity_id,
		shopType = slot1.cmd,
		awards = slot4,
		callback = function ()
			getProxy(ActivityProxy):updateActivity(uv0)
		end
	})
end

return slot0
