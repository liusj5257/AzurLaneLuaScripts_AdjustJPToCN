slot0 = class("OpenMailCommand", pm.SimpleCommand)

slot0.execute = function(slot0, slot1)
	if getProxy(MailProxy):getMailById(slot1:getBody()) == nil then
		print("邮件不存在: " .. slot2)

		return
	end

	if slot4.openned then
		slot0:sendNotification(GAME.OPEN_MAIL_DONE, slot4)

		return
	end

	slot5 = pg.ConnectionMgr.GetInstance()

	slot5:Send(30008, {
		id = slot4.id
	}, 30009, function (slot0)
		uv0.readFlag = 2

		uv0:extend(slot0.detail_info)
		uv1:updateMail(uv0)
		uv2:sendNotification(GAME.OPEN_MAIL_DONE, uv0)
	end)
end

return slot0
