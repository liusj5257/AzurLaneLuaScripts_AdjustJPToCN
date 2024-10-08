slot0 = class("CrusingMediator", import("view.base.ContextMediator"))
slot0.UNFROZEN_MAP_UPDATE = "CrusingMediator.UN_FROZEN_MAP_UPDATE"
slot0.EVENT_OPEN_TASK = "CrusingMediator.EVENT_OPEN_TASK"
slot0.EVENT_GET_AWARD = "CrusingMediator.EVENT_GET_AWARD"
slot0.EVENT_GET_AWARD_PAY = "CrusingMediator.EVENT_GET_AWARD_PAY"
slot0.EVENT_GET_AWARD_ALL = "CrusingMediator.EVENT_GET_AWARD_ALL"
slot0.EVENT_GO_CHARGE = "CrusingMediator.EVENT_GO_CHARGE"
slot0.EVENT_OPEN_BIRTHDAY = "CrusingMediator.EVENT_OPEN_BIRTHDAY"

slot0.register = function(slot0)
	slot0:bind(uv0.EVENT_OPEN_TASK, function (slot0)
		uv0.contextData.frozenMapUpdate = true

		uv0:addSubLayers(Context.New({
			mediator = CrusingTaskMediator,
			viewComponent = CrusingTaskLayer
		}))
	end)
	slot0:bind(uv0.EVENT_GET_AWARD, function (slot0, slot1)
		uv0:sendNotification(GAME.CRUSING_CMD, {
			cmd = 2,
			activity_id = uv0.viewComponent.activity.id,
			arg1 = slot1
		})
	end)
	slot0:bind(uv0.EVENT_GET_AWARD_PAY, function (slot0, slot1)
		uv0:sendNotification(GAME.CRUSING_CMD, {
			cmd = 3,
			activity_id = uv0.viewComponent.activity.id,
			arg1 = slot1
		})
	end)
	slot0:bind(uv0.EVENT_GET_AWARD_ALL, function (slot0)
		uv0:sendNotification(GAME.CRUSING_CMD, {
			cmd = 4,
			activity_id = uv0.viewComponent.activity.id
		})
	end)
	slot0:bind(uv0.EVENT_GO_CHARGE, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = ChargeItemPanelMediator,
			viewComponent = ChargeItemPanelLayer,
			data = {
				panelConfig = slot1
			}
		}))
	end)
	slot0:bind(uv0.EVENT_OPEN_BIRTHDAY, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = ChargeBirthdayMediator,
			viewComponent = ChargeBirthdayLayer,
			data = {}
		}))
	end)
	slot0.viewComponent:setActivity(getProxy(ActivityProxy):getAliveActivityByType(ActivityConst.ACTIVITY_TYPE_PT_CRUSING))
	slot0.viewComponent:setPlayer(getProxy(PlayerProxy):getData())
end

slot0.listNotificationInterests = function(slot0)
	return {
		ActivityProxy.ACTIVITY_UPDATED,
		GAME.CRUSING_CMD_DONE,
		uv0.UNFROZEN_MAP_UPDATE,
		PlayerProxy.UPDATED,
		GAME.CHARGE_SUCCESS
	}
end

slot0.handleNotification = function(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == ActivityProxy.ACTIVITY_UPDATED then
		if slot3.id == slot0.viewComponent.activity.id then
			slot0.viewComponent:setActivity(slot3)
			slot0.viewComponent:updateAwardPanel()
			slot0.viewComponent:updateMapStatus()
			slot0.viewComponent:updateMapWay()
		end
	elseif slot2 == GAME.CRUSING_CMD_DONE then
		slot0.viewComponent:emit(BaseUI.ON_ACHIEVE, slot3.awards)
	elseif slot2 == uv0.UNFROZEN_MAP_UPDATE then
		slot0.contextData.frozenMapUpdate = false

		slot0.viewComponent:updateMapWay()
	elseif slot2 == PlayerProxy.UPDATED then
		slot0.viewComponent:setPlayer(slot3)
	elseif slot2 == GAME.CHARGE_SUCCESS then
		slot0.viewComponent:OnChargeSuccess(Goods.Create({
			shop_id = slot3.shopId
		}, Goods.TYPE_CHARGE))
	end
end

return slot0
