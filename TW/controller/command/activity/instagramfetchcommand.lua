slot0 = class("InstagramFetchCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot2 = slot1:getBody()
	slot3 = getProxy(ActivityProxy)
	slot4 = slot3:getActivityById(slot2.activity_id)
	slot5 = pg.ConnectionMgr.GetInstance()

	slot5:Send(11202, {
		cmd = 6,
		activity_id = slot2.activity_id,
		arg_list = {}
	}, 11203, function (slot0)
		if slot0.result == 0 then
			slot1 = uv0.data1_list

			for slot6 = 1, math.floor(#slot0.number) do
				uv0.data1_list[slot6] = slot0.number[slot6]
			end

			uv1:RegisterRequestTime(uv2.activity_id, pg.TimeMgr.GetInstance():GetServerTime())
			uv1:updateActivity(uv0)
		else
			pg.TipsMgr.GetInstance():ShowTips(ERROR_MESSAGE[slot0.result] .. slot0.result)
		end
	end)
end

return slot0
