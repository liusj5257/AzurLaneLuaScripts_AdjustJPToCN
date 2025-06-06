slot0 = class("PreCombatMediator", import("..base.ContextMediator"))
slot0.ON_START = "PreCombatMediator:ON_START"
slot0.ON_CHANGE_FLEET = "PreCombatMediator:ON_CHANGE_FLEET"
slot0.ON_COMMIT_EDIT = "PreCombatMediator:ON_COMMIT_EDIT"
slot0.ON_ABORT_EDIT = "PreCombatMediator:ON_ABORT_EDIT"
slot0.OPEN_SHIP_INFO = "PreCombatMediator:OPEN_SHIP_INFO"
slot0.REMOVE_SHIP = "PreCombatMediator:REMOVE_SHIP"
slot0.CHANGE_FLEET_SHIPS_ORDER = "PreCombatMediator:CHANGE_FLEET_SHIPS_ORDER"
slot0.CHANGE_FLEET_SHIP = "PreCombatMediator:CHANGE_FLEET_SHIP"
slot0.BEGIN_STAGE_PROXY = "PreCombatMediator:BEGIN_STAGE_PROXY"
slot0.SHOW_CONTINUOUS_OPERATION_WINDOW = "PreCombatMediator:SHOW_CONTINUOUS_OPERATION_WINDOW"
slot0.CONTINUOUS_OPERATION = "PreCombatMediator:CONTINUOUS_OPERATION"
slot0.ON_AUTO = "PreCombatMediator:ON_AUTO"
slot0.ON_SUB_AUTO = "PreCombatMediator:ON_SUB_AUTO"

slot0.register = function(slot0)
	slot0:bindEvent()

	slot0.ships = getProxy(BayProxy):getRawData()

	slot0.viewComponent:SetShips(slot0.ships)

	slot2 = slot0.contextData.system
	slot3 = getProxy(FleetProxy)
	slot4 = slot3:getData()

	if slot3.EdittingFleet ~= nil then
		slot4[slot3.EdittingFleet.id] = slot3.EdittingFleet
	end

	slot0.fleets = slot4

	slot0.viewComponent:SetFleets(slot4)
	slot0.viewComponent:SetPlayerInfo(getProxy(PlayerProxy):getData())

	if slot2 == SYSTEM_DUEL then
		slot0.viewComponent:SetCurrentFleet(FleetProxy.PVP_FLEET_ID)
	elseif slot2 == SYSTEM_SUB_ROUTINE then
		slot0.viewComponent:SetStageID(slot0.contextData.stageId)
		slot0.viewComponent:SetCurrentFleet(slot0.contextData.subFleetId)
	else
		slot0.viewComponent:SetStageID(slot0.contextData.stageId)
		slot0.viewComponent:SetCurrentFleet(slot5.combatFleetId)
	end
end

slot0.bindEvent = function(slot0)
	slot1 = slot0.contextData.system

	slot0:bind(uv0.ON_ABORT_EDIT, function (slot0)
		slot1 = getProxy(FleetProxy)

		slot1:abortEditting()
		slot1:syncFleet()
	end)
	slot0:bind(uv0.ON_CHANGE_FLEET, function (slot0, slot1)
		uv0:changeFleet(slot1)
	end)
	slot0:bind(uv0.ON_AUTO, function (slot0, slot1)
		uv0:onAutoBtn(slot1)
	end)
	slot0:bind(uv0.ON_SUB_AUTO, function (slot0, slot1)
		uv0:onAutoSubBtn(slot1)
	end)
	slot0:bind(uv0.CHANGE_FLEET_SHIPS_ORDER, function (slot0, slot1)
		uv0:refreshEdit(slot1)
	end)
	slot0:bind(uv0.REMOVE_SHIP, function (slot0, slot1, slot2)
		FormationMediator.removeShipFromFleet(slot2, slot1)
		uv0:refreshEdit(slot2)
	end)
	slot0:bind(uv0.OPEN_SHIP_INFO, function (slot0, slot1, slot2)
		uv0.contextData.form = PreCombatLayer.FORM_EDIT
		slot3 = {}

		for slot7, slot8 in ipairs(slot2:getShipIds()) do
			table.insert(slot3, uv0.ships[slot8])
		end

		uv0:sendNotification(GAME.GO_SCENE, SCENE.SHIPINFO, {
			shipId = slot1,
			shipVOs = slot3
		})
	end)
	slot0:bind(uv0.CHANGE_FLEET_SHIP, function (slot0, slot1, slot2, slot3)
		assert(slot2.id ~= FleetProxy.PVP_FLEET_ID, "fleet type error")

		uv0.contextData.form = PreCombatLayer.FORM_EDIT

		FormationMediator.saveEdit()

		slot4 = uv1 == SYSTEM_DUEL
		slot5 = slot4 and ShipStatus.TAG_HIDE_PVP or ShipStatus.TAG_HIDE_NORMAL
		slot6 = slot4 and ShipStatus.TAG_BLOCK_PVP or nil
		slot7, slot8, slot9 = FormationMediator.getDockCallbackFuncs(uv0, slot1, slot2, slot3)
		slot10 = {}

		for slot14, slot15 in ipairs(slot2.ships) do
			if not slot1 or slot15 ~= slot1.id then
				table.insert(slot10, slot15)
			end
		end

		uv0:sendNotification(GAME.GO_SCENE, SCENE.DOCKYARD, {
			selectedMin = 0,
			useBlackBlock = true,
			selectedMax = 1,
			energyDisplay = true,
			leastLimitMsg = i18n("battle_preCombatMediator_leastLimit"),
			quitTeam = slot1 ~= nil,
			teamFilter = slot3,
			onShip = slot7,
			confirmSelect = slot8,
			onSelected = slot9,
			hideTagFlags = slot5,
			blockTagFlags = slot6,
			otherSelectedIds = slot10
		})
	end)
	slot0:bind(uv0.ON_COMMIT_EDIT, function (slot0, slot1)
		uv0:commitEdit(slot1)
	end)
	slot0:bind(uv0.ON_START, function (slot0, slot1, slot2)
		seriesAsync({
			function (slot0)
				if pg.battle_cost_template[uv0].enter_energy_cost == 0 then
					slot0()

					return
				end

				slot2, slot3 = nil
				slot4 = {}

				for slot8, slot9 in ipairs(getProxy(FleetProxy):getFleetById(uv1).ships) do
					table.insert(slot4, getProxy(BayProxy):getShipById(slot9))
				end

				Fleet.EnergyCheck(slot4, slot2:GetName(), function (slot0)
					if slot0 then
						uv0()
					end
				end, nil, slot3)
			end,
			function (slot0)
				if uv0.contextData.OnConfirm then
					uv0.contextData.OnConfirm(slot0)
				else
					slot0()
				end
			end,
			function ()
				uv0.viewComponent:emit(uv1.BEGIN_STAGE_PROXY, {
					curFleetId = uv2,
					continuousBattleTimes = uv3
				})
			end
		})
	end)

	slot2 = function()
		slot0 = 0

		for slot4, slot5 in ipairs(uv0.contextData.fleets) do
			slot6 = slot5:GetCostSum().oil

			if uv0.contextData.costLimit[slot4 == 1 and 1 or 2] > 0 then
				slot6 = math.min(slot6, slot8)
			end

			slot0 = slot0 + slot6
		end

		return slot0
	end

	slot0:bind(uv0.SHOW_CONTINUOUS_OPERATION_WINDOW, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = ContinuousOperationWindowMediator,
			viewComponent = ContinuousOperationWindow,
			data = {
				mainFleetId = slot1,
				stageId = uv0.contextData.stageId,
				system = uv0.contextData.system,
				oilCost = uv1()
			}
		}))
	end)
	slot0:bind(uv0.BEGIN_STAGE_PROXY, function (slot0, slot1)
		slot2 = nil

		uv0:sendNotification(GAME.BEGIN_STAGE, {
			stageId = (not uv0.contextData.rivalId or uv0.contextData.rivalId) and uv0.contextData.stageId,
			mainFleetId = slot1.curFleetId,
			system = uv0.contextData.system,
			actId = uv0.contextData.actId,
			rivalId = uv0.contextData.rivalId,
			continuousBattleTimes = slot1.continuousBattleTimes,
			totalBattleTimes = slot1.continuousBattleTimes
		})
	end)
end

slot0.changeFleet = function(slot0, slot1)
	if slot0.contextData.system == SYSTEM_SUB_ROUTINE then
		slot0.contextData.subFleetId = slot1
	else
		getProxy(PlayerProxy).combatFleetId = slot1
	end

	slot0.viewComponent:SetCurrentFleet(slot1)
	slot0.viewComponent:UpdateFleetView(true)
	slot0.viewComponent:SetFleetStepper()
end

slot0.refreshEdit = function(slot0, slot1)
	getProxy(FleetProxy).EdittingFleet = slot1

	if slot0.contextData.system ~= SYSTEM_SUB_ROUTINE then
		slot3 = slot2:getData()
		slot3[slot1.id] = slot1

		slot0.viewComponent:SetFleets(slot3)
	end

	slot0.viewComponent:UpdateFleetView(false)
end

slot0.commitEdit = function(slot0, slot1)
	if getProxy(FleetProxy).EdittingFleet == nil or slot3:isFirstFleet() or slot3:isLegalToFight() == true then
		slot2:commitEdittingFleet(slot1)
	elseif #slot3.ships == 0 then
		slot2:commitEdittingFleet(slot1)

		if slot0.contextData.system == SYSTEM_SUB_ROUTINE then
			slot0:changeFleet()
		else
			slot0:changeFleet(1)
		end
	else
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("ship_formationMediaror_trash_warning", slot3.defaultName),
			onYes = function ()
				slot1 = getProxy(BayProxy):getRawData()

				for slot6 = #uv0.ships, 1, -1 do
					uv0:removeShip(slot1[slot2[slot6]])
				end

				if uv0.id == FleetProxy.PVP_FLEET_ID then
					uv1:commitEdittingFleet()
					uv2:changeFleet(FleetProxy.PVP_FLEET_ID)
				else
					uv1:commitEdittingFleet(uv3)
					uv2:changeFleet(1)
				end
			end
		})
	end
end

slot0.onAutoBtn = function(slot0, slot1)
	slot0:sendNotification(GAME.AUTO_BOT, {
		isActiveBot = slot1.isOn,
		toggle = slot1.toggle
	})
end

slot0.onAutoSubBtn = function(slot0, slot1)
	slot0:sendNotification(GAME.AUTO_SUB, {
		isActiveSub = slot1.isOn,
		toggle = slot1.toggle
	})
end

slot0.listNotificationInterests = function(slot0)
	return {
		GAME.BEGIN_STAGE_DONE,
		PlayerProxy.UPDATED,
		GAME.BEGIN_STAGE_ERRO,
		PreCombatMediator.BEGIN_STAGE_PROXY,
		uv0.CONTINUOUS_OPERATION
	}
end

slot0.handleNotification = function(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == GAME.BEGIN_STAGE_DONE then
		slot0:sendNotification(GAME.GO_SCENE, SCENE.COMBATLOAD, slot3)
	elseif slot2 == PlayerProxy.UPDATED then
		slot0.viewComponent:SetPlayerInfo(getProxy(PlayerProxy):getData())
	elseif slot2 == GAME.BEGIN_STAGE_ERRO then
		if slot3 == 3 then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				hideNo = true,
				content = i18n("battle_preCombatMediator_timeout"),
				onYes = function ()
					uv0.viewComponent:emit(BaseUI.ON_CLOSE)
				end
			})
		end
	elseif slot2 == PreCombatMediator.BEGIN_STAGE_PROXY then
		slot0.viewComponent:emit(PreCombatMediator.BEGIN_STAGE_PROXY, slot3)
	elseif slot2 == uv0.CONTINUOUS_OPERATION then
		slot0.viewComponent:emit(PreCombatMediator.ON_START, slot3.mainFleetId, slot3.battleTimes)
	end
end

return slot0
