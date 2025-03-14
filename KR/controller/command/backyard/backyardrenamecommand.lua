slot0 = class("BackYardRenameCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	slot3 = pg.ConnectionMgr.GetInstance()

	slot3:Send(19016, {
		name = slot1:getBody()
	}, 19017, function (slot0)
		if slot0.result == 0 then
			slot1 = getProxy(DormProxy)
			slot2 = slot1:getData()

			slot2:setName(uv0)
			slot1:updateDrom(slot2, BackYardConst.DORM_UPDATE_TYPE_NAME)
			uv1:sendNotification(GAME.BACKYARD_RENAME_DONE)
			pg.TipsMgr.GetInstance():ShowTips(i18n("backyard_rename_success"))
		else
			pg.TipsMgr.GetInstance():ShowTips(errorTip("", slot0.result))
		end
	end)
end

return slot0
