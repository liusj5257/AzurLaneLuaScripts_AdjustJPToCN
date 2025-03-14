slot0 = class("GameRoomSuccessCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot2 = slot1:getBody()
	slot3 = slot2.roomId
	slot4 = slot2.times
	slot5 = slot2.score
	slot6 = getProxy(GameRoomProxy):lastMonthlyTicket()

	if getProxy(GameRoomProxy):lastTicketMax() == 0 or slot6 == 0 then
		return
	end

	slot8 = pg.ConnectionMgr.GetInstance()

	slot8:Send(26126, {
		roomid = slot3,
		times = slot4,
		score = slot5
	}, 26127, function (slot0)
		if slot0.result == 0 then
			getProxy(GameRoomProxy):storeGameScore(uv0, uv1)

			slot1 = getProxy(GameRoomProxy):lastTicketMax()

			getProxy(PlayerProxy):getRawData():consume({
				[id2res(GameRoomProxy.coin_res_id)] = uv2 or 0
			})

			if getProxy(GameRoomProxy):lastMonthlyTicket() < PlayerConst.addTranDrop(slot0.drop_list)[1].count then
				slot4 = slot5
			end

			if slot1 < slot4 then
				slot4 = slot1
			end

			getProxy(GameRoomProxy):setMonthlyTicket(slot4)

			slot3[1].count = slot4

			if slot3[1].count ~= 0 then
				pg.m02:sendNotification(GAME.GAME_ROOM_AWARD_DONE, slot3)
			end
		else
			pg.TipsMgr.GetInstance():ShowTips(ERROR_MESSAGE[slot0.result] .. slot0.result)
		end
	end)
end

return slot0
