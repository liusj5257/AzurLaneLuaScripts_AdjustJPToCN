slot0 = class("BlackWhiteGridOPCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot2 = slot1:getBody()
	slot3 = slot2.id
	slot4 = slot2.activityId
	slot5 = slot2.cmd

	if slot2.score < 0 then
		return
	end

	if not getProxy(ActivityProxy):getActivityById(slot4) or slot8:isEnd() then
		return
	end

	slot9 = pg.ConnectionMgr.GetInstance()

	slot9:Send(11202, {
		cmd = 1,
		activity_id = slot4,
		arg1 = slot3,
		arg2 = slot6,
		arg_list = {}
	}, 11203, function (slot0)
		if slot0.result == 0 then
			slot1 = PlayerConst.addTranDrop(slot0.award_list)

			if not table.contains(uv0.data1_list, uv1) then
				table.insert(uv0.data1_list, uv1)
			end

			slot2 = table.indexof(uv0.data1_list, uv1)

			assert(slot2)

			uv0.data2_list[slot2] = uv2

			uv3:updateActivity(uv0)
			uv4:sendNotification(GAME.BLACK_WHITE_GRID_OP_DONE, {
				awards = slot1
			})
		else
			originalPrint(slot0.result)
		end
	end)
end

return slot0
