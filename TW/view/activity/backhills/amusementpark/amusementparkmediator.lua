slot0 = class("AmusementParkMediator", import("..TemplateMV.BackHillMediatorTemplate"))
slot0.MINIGAME_OPERATION = "MINIGAME_OPERATION"
slot0.ACTIVITY_OPERATION = "ACTIVITY_OPERATION"

slot0.register = function(slot0)
	slot0:BindEvent()

	slot1 = getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_BUILDING_BUFF)

	assert(slot1, "Building Activity Not Found")

	slot0.activity = slot1

	slot0.viewComponent:UpdateActivity(slot1)
end

slot0.BindEvent = function(slot0)
	slot0.super.BindEvent(slot0)
	slot0:bind(uv0.ACTIVITY_OPERATION, function (slot0, slot1)
		assert(uv0.activity, "Cant Initialize Activity")

		slot1.activity_id = uv0.activity.id

		uv0:sendNotification(GAME.ACTIVITY_OPERATION, slot1)
	end)
end

slot0.listNotificationInterests = function(slot0)
	return {
		GAME.SEND_MINI_GAME_OP_DONE,
		ActivityProxy.ACTIVITY_UPDATED
	}
end

slot0.handleNotification = function(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == GAME.SEND_MINI_GAME_OP_DONE then
		seriesAsync({
			function (slot0)
				if #uv0.awards > 0 then
					uv1.viewComponent:emit(BaseUI.ON_ACHIEVE, slot1, slot0)
				else
					slot0()
				end
			end,
			function (slot0)
				uv0.viewComponent:UpdateView()
			end
		})
	elseif slot2 == ActivityProxy.ACTIVITY_UPDATED then
		if slot3:getConfig("type") == ActivityConst.ACTIVITY_TYPE_BUILDING_BUFF then
			slot0.activity = slot3

			slot0.viewComponent:UpdateActivity(slot3)
		elseif slot3:getConfig("type") == ActivityConst.ACTIVITY_TYPE_SHOP_PROGRESS_REWARD then
			slot4 = slot3

			slot0.viewComponent:UpdateView()
		end
	end
end

return slot0
