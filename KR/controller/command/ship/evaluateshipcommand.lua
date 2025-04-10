slot0 = class("EvaluateShipCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot2 = slot1:getBody()
	slot5 = pg.ConnectionMgr.GetInstance()

	slot5:Send(17103, {
		ship_group_id = slot2.groupId,
		context = slot2.content
	}, 17104, function (slot0)
		if slot0.result == 0 then
			if getProxy(CollectionProxy):getShipGroup(uv0) then
				slot2.evaluation = ShipEvaluation.New(slot0.ship_discuss)

				slot1:updateShipGroup(slot2)
				uv1:sendNotification(CollectionProxy.GROUP_EVALUATION_UPDATE, uv0)
			end

			pg.TipsMgr.GetInstance():ShowTips(i18n("eva_ship_success"))
		elseif slot0.result == 1 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("report_ship_cannot_comment"))
		elseif slot0.result == 2011 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("evaluate_too_loog"))
		elseif slot0.result == 2013 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("evaluate_ban_word"))
		elseif slot0.result == 40 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("report_cannot_comment_level_2"))
		elseif slot0.result == 41 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("report_cannot_comment_level_1", slot0.need_level))
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("eva_ship", slot0.result))
		end
	end)
end

return slot0
