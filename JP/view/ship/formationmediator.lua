slot0 = class("FormationMediator", import("..base.ContextMediator"))
slot0.OPEN_SHIP_INFO = "FormationMediator:OPEN_SHIP_INFO"
slot0.ON_CHANGE_FLEET = "FormationMediator:ON_CHANGE_FLEET"
slot0.CHANGE_FLEET_NAME = "FormationMediator:CHANGE_FLEET_NAME"
slot0.CHANGE_FLEET_SHIP = "FormationMediator:CHANGE_FLEET_SHIP"
slot0.REMOVE_SHIP = "FormationMediator:REMOVE_SHIP"
slot0.CHANGE_FLEET_FORMATION = "FormationMediator:CHANGE_FLEET_FORMATION"
slot0.CHANGE_FLEET_SHIPS_ORDER = "FormationMediator:CHANGE_FLEET_SHIPS_ORDER"
slot0.COMMIT_FLEET = "FormationMediator:COMMIT_FLEET"
slot0.ON_SELECT_COMMANDER = "FormationMediator:ON_SELECT_COMMANDER"
slot0.ON_CMD_SKILL = "FormationMediator:ON_CMD_SKILL"
slot0.COMMANDER_FORMATION_OP = "FormationMediator:COMMANDER_FORMATION_OP"

slot0.register = function(slot0)
	slot0.ships = getProxy(BayProxy):getRawData()

	slot0.viewComponent:setShips(slot0.ships)

	slot2 = getProxy(FleetProxy)
	slot3 = slot2:GetRegularFleets()

	if slot2.EdittingFleet ~= nil then
		slot3[slot2.EdittingFleet.id] = slot2.EdittingFleet
	end

	slot0.viewComponent:SetFleets(slot3)
	slot0.viewComponent:setCommanderPrefabFleet(getProxy(CommanderProxy):getPrefabFleet())
	slot0:bind(uv0.ON_CMD_SKILL, function (slot0, slot1)
		uv0:addSubLayers(Context.New({
			mediator = CommanderSkillMediator,
			viewComponent = CommanderSkillLayer,
			data = {
				skill = slot1
			}
		}))
	end)
	slot0:bind(uv0.COMMIT_FLEET, function (slot0, slot1)
		uv0.commitEdit(slot1)
	end)
	slot0:bind(uv0.CHANGE_FLEET_NAME, function (slot0, slot1, slot2)
		uv0.commitEdit(function ()
			uv0:sendNotification(GAME.RENAME_FLEET, {
				id = uv1,
				name = uv2
			})
		end)
	end)
	slot0:bind(uv0.OPEN_SHIP_INFO, function (slot0, slot1, slot2, slot3)
		uv0.commitEdit(function ()
			uv0.contextData.number = uv1.id
			uv0.contextData.toggle = uv2
			slot0 = {}

			for slot4, slot5 in ipairs(uv1:getShipIds()) do
				table.insert(slot0, uv0.ships[slot5])
			end

			uv0:sendNotification(GAME.GO_SCENE, SCENE.SHIPINFO, {
				shipId = uv3,
				shipVOs = slot0
			})
		end)
	end)
	slot0:bind(uv0.ON_CHANGE_FLEET, function (slot0, slot1)
		uv0.commitEdit(function ()
			uv0.viewComponent:SetFleets(uv1:GetRegularFleets())
			uv0.viewComponent:SetCurrentFleetID(uv2)
			uv0.viewComponent:UpdateFleetView(true)
		end)
	end)
	slot0:bind(uv0.CHANGE_FLEET_FORMATION, function (slot0, slot1, slot2)
		slot2.formation = slot1

		uv0:refreshEdit(slot2)
	end)
	slot0:bind(uv0.CHANGE_FLEET_SHIPS_ORDER, function (slot0, slot1)
		uv0:refreshEdit(slot1)
	end)
	slot0:bind(uv0.REMOVE_SHIP, function (slot0, slot1, slot2)
		uv0.removeShipFromFleet(slot2, slot1)
		uv1:refreshEdit(slot2)
	end)
	slot0:bind(uv0.CHANGE_FLEET_SHIP, function (slot0, slot1, slot2, slot3, slot4)
		uv0.contextData.number = slot2.id
		uv0.contextData.toggle = slot3

		uv0.saveEdit()

		slot5 = 0

		if slot2.id == 1 and #slot2.ships <= 1 and slot1 ~= nil then
			slot5 = 1
		end

		slot6 = {}

		for slot10, slot11 in ipairs(slot2.ships) do
			if not slot1 or slot11 ~= slot1.id then
				table.insert(slot6, slot11)
			end
		end

		slot7, slot8, slot9 = uv1.getDockCallbackFuncs(uv0, slot1, slot2, slot4)

		uv0:sendNotification(GAME.GO_SCENE, SCENE.DOCKYARD, {
			useBlackBlock = true,
			selectedMax = 1,
			energyDisplay = true,
			selectedMin = slot5,
			leastLimitMsg = i18n("ship_formationMediator_leastLimit"),
			quitTeam = slot1 ~= nil,
			teamFilter = slot4,
			leftTopInfo = i18n("word_formation"),
			onShip = slot7,
			confirmSelect = slot8,
			onSelected = slot9,
			onQuickHome = uv0.commitEdit,
			hideTagFlags = ShipStatus.TAG_HIDE_FORMATION,
			otherSelectedIds = slot6,
			preView = uv0.viewComponent.__cname
		})
	end)
	slot0:bind(uv0.ON_SELECT_COMMANDER, function (slot0, slot1, slot2)
		uv0.contextData.toggle = FormationUI.TOGGLE_FORMATION
		uv0.contextData.number = slot2

		uv1.onSelectCommander(slot1, slot2)
	end)
	slot0:bind(uv0.COMMANDER_FORMATION_OP, function (slot0, slot1)
		uv0:sendNotification(GAME.COMMANDER_FORMATION_OP, {
			data = slot1
		})
	end)
	slot0.viewComponent:setPlayer(getProxy(PlayerProxy):getData())
end

slot0.onSelectCommander = function(slot0, slot1)
	slot2 = getProxy(FleetProxy)
	slot4 = getProxy(FleetProxy):getFleetById(slot1):getCommanderByPos(slot0)

	for slot9, slot10 in ipairs({}) do
		if slot4 and slot10 == slot4.id then
			table.remove(slot5, slot9)

			break
		end
	end

	pg.m02:sendNotification(GAME.GO_SCENE, SCENE.COMMANDERCAT, {
		maxCount = 1,
		mode = CommanderCatScene.MODE_SELECT,
		fleetType = CommanderCatScene.FLEET_TYPE_COMMON,
		activeCommander = slot4,
		ignoredIds = slot5,
		onCommander = function (slot0)
			return true
		end,
		onSelected = function (slot0, slot1)
			pg.m02:sendNotification(GAME.SELECT_FLEET_COMMANDER, {
				fleetId = uv0,
				pos = uv1,
				commanderId = slot0[1],
				callback = function ()
					if uv0.EdittingFleet then
						uv0.EdittingFleet.commanderIds = getProxy(FleetProxy):getFleetById(uv0.EdittingFleet.id).commanderIds
					end

					uv1()
				end
			})
		end,
		onQuit = function (slot0)
			pg.m02:sendNotification(GAME.COOMMANDER_EQUIP_TO_FLEET, {
				commanderId = 0,
				fleetId = uv0,
				pos = uv1,
				callback = function (slot0)
					if uv0.EdittingFleet then
						uv0.EdittingFleet.commanderIds = slot0.commanderIds
					end

					uv1()
				end
			})
		end
	})
end

slot0.refreshEdit = function(slot0, slot1)
	slot2 = getProxy(FleetProxy)
	slot2.EdittingFleet = slot1
	slot3 = slot2:GetRegularFleets()
	slot3[slot1.id] = slot1

	slot0.viewComponent:SetFleets(slot3)
	slot0.viewComponent:UpdateFleetView(false)
end

slot0.commitEdit = function(slot0)
	if getProxy(FleetProxy).EdittingFleet == nil or slot2:isFirstFleet() or slot2:isLegalToFight() == true or #slot2.ships == 0 then
		slot1:commitEdittingFleet(slot0)
	else
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("ship_formationMediaror_trash_warning", slot2.defaultName),
			onYes = function ()
				slot1 = getProxy(BayProxy):getRawData()
				slot2 = uv0.ships
				slot3 = #slot2

				for slot7 = #slot2, 1, -1 do
					uv0:removeShip(slot1[slot2[slot7]])
				end

				uv1:commitEdittingFleet(uv2)

				getProxy(PlayerProxy).combatFleetId = 1
			end,
			onNo = function ()
			end
		})
	end
end

slot0.listNotificationInterests = function(slot0)
	return {
		FleetProxy.FLEET_UPDATED,
		FleetProxy.FLEET_RENAMED,
		GAME.UPDATE_FLEET_DONE,
		PlayerProxy.UPDATED,
		CommanderProxy.PREFAB_FLEET_UPDATE,
		GAME.COOMMANDER_EQUIP_TO_FLEET_DONE
	}
end

slot0.handleNotification = function(slot0, slot1)
	slot3 = slot1:getBody()

	if slot1:getName() == FleetProxy.FLEET_UPDATED then
		slot0.viewComponent:SetFleets(getProxy(FleetProxy):GetRegularFleets())
	elseif slot2 == FleetProxy.FLEET_RENAMED then
		pg.TipsMgr.GetInstance():ShowTips(i18n("ship_formationMediator_changeNameSuccess"))
		slot0.viewComponent:SetFleets(getProxy(FleetProxy):GetRegularFleets())
		slot0.viewComponent:UpdateFleetView(true)
		slot0.viewComponent:DisplayRenamePanel(false)
	elseif slot2 == CommanderProxy.PREFAB_FLEET_UPDATE then
		slot0.viewComponent:setCommanderPrefabFleet(getProxy(CommanderProxy):getPrefabFleet())
		slot0.viewComponent:updateCommanderFormation()
	elseif slot2 == GAME.COOMMANDER_EQUIP_TO_FLEET_DONE then
		slot0.viewComponent:updateCommanderFormation()
	end
end

slot0.checkChangeShip = function(slot0, slot1, slot2)
	slot5 = getProxy(BayProxy):getRawData()
	slot6 = slot2.configId

	if not (getProxy(FleetProxy):GetRegularFleetByShip(slot2) and slot7.id == slot0.id) and (not slot1 or not slot1:isSameKind(slot2)) then
		for slot12, slot13 in ipairs(slot0.ships) do
			if slot5[slot13]:isSameKind(slot2) then
				return false, i18n("ship_formationMediator_changeNameError_sameShip")
			end
		end
	end

	return true
end

slot0.removeShipFromFleet = function(slot0, slot1)
	if not slot0:canRemove(slot1) then
		slot2, slot3 = slot0:getShipPos(slot1)

		pg.TipsMgr.GetInstance():ShowTips(i18n("ship_formationUI_removeError_onlyShip", slot1:getConfigTable().name, slot0.name, Fleet.C_TEAM_NAME[slot3]))

		return false
	end

	slot0:removeShip(slot1)

	getProxy(FleetProxy).EdittingFleet = slot0

	return true
end

slot0.saveEdit = function()
	getProxy(FleetProxy):saveEdittingFleet()
end

slot0.getDockCallbackFuncs = function(slot0, slot1, slot2, slot3)
	slot4 = getProxy(FleetProxy)
	slot5 = getProxy(BayProxy)
	slot6 = getProxy(ChapterProxy)

	return function (slot0, slot1)
		slot2, slot3 = ShipStatus.ShipStatusCheck("inFleet", slot0, slot1)

		if not slot2 then
			return slot2, slot3
		end

		slot4, slot5 = uv0.checkChangeShip(uv1, uv2, slot0)

		if not slot4 then
			return false, slot5
		end

		if uv3:GetRegularFleetByShip(slot0) ~= nil and slot6.id ~= uv1.id then
			if uv2 == nil and not slot6:canRemove(slot0) then
				slot7, slot8 = slot6:getShipPos(slot0)

				return false, i18n("ship_formationMediator_replaceError_onlyShip", slot6.defaultName, Fleet.C_TEAM_NAME[slot8])
			end

			if uv2 == nil then
				return true
			else
				slot7, slot5 = uv0.checkChangeShip(slot6, slot0, uv2)

				if not slot7 then
					return false, slot5
				end
			end
		end

		return true
	end, function (slot0, slot1, slot2)
		if not uv0:getShipById(slot0[1]) then
			slot1()

			return
		end

		if uv1:GetRegularFleetByShip(slot3) and slot4.id ~= uv2.id then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				hideNo = false,
				content = i18n("ship_formationMediator_quest_replace", slot4.defaultName),
				onYes = slot1
			})
		elseif uv3:CheckUnitInSupportFleet(slot3) then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				hideNo = false,
				content = i18n("ship_formationMediator_request_replace_support"),
				onYes = slot1
			})
		else
			slot1()

			return
		end
	end, function (slot0)
		if not uv0:getShipById(slot0[1]) then
			if uv1 == nil then
				return
			end

			uv2.removeShipFromFleet(uv3, uv1)

			return
		end

		slot2 = function()
			slot1 = uv2:getShipPos(uv3)

			if uv0:GetRegularFleetByShip(uv1) == nil then
				if uv3 == nil then
					uv2:insertShip(uv1, nil, uv4)
				else
					uv2:removeShip(uv3)
					uv2:insertShip(uv1, slot1, uv4)
				end

				uv0.EdittingFleet = uv2

				return
			end

			slot2 = slot0:getShipPos(uv1)

			if slot0.id == uv2.id then
				if uv3 == nil then
					uv2:removeShip(uv1)
					uv2:insertShip(uv1, nil, uv4)

					uv0.EdittingFleet = uv2

					return
				end

				if uv3.id == uv1.id then
					return
				end

				uv2:removeShip(uv3)
				uv2:removeShip(uv1)

				if slot2 < slot1 then
					uv2:insertShip(uv3, slot2, uv4)
					uv2:insertShip(uv1, slot1, uv4)
				else
					uv2:insertShip(uv1, slot1, uv4)
					uv2:insertShip(uv3, slot2, uv4)
				end

				uv0.EdittingFleet = uv2

				return
			end

			if not slot0:canRemove(uv1) and uv3 == nil then
				slot3, slot4 = slot0:getShipPos(uv1)

				pg.TipsMgr.GetInstance():ShowTips(i18n("ship_formationMediator_replaceError_onlyShip", slot0.defaultName, Fleet.C_TEAM_NAME[slot4]))
			else
				slot0:removeShip(uv1)

				if uv3 then
					slot0:insertShip(uv3, slot2, uv4)
					uv5:sendNotification(GAME.UPDATE_FLEET, {
						fleet = slot0
					})
					uv2:removeShip(uv3)
					uv2:insertShip(uv1, slot1, uv4)

					uv0.EdittingFleet = uv2

					uv6.saveEdit()
					uv5:sendNotification(GAME.UPDATE_FLEET, {
						fleet = uv2
					})
				else
					uv5:sendNotification(GAME.UPDATE_FLEET, {
						fleet = slot0
					})
					uv2:insertShip(uv1, nil, uv4)

					uv0.EdittingFleet = uv2

					uv6.saveEdit()
					uv5:sendNotification(GAME.UPDATE_FLEET, {
						fleet = uv2
					})
				end
			end
		end

		if uv7:CheckUnitInSupportFleet(slot1) then
			uv6:sendNotification(GAME.REMOVE_ELITE_TARGET_SHIP, {
				shipId = slot1.id,
				callback = slot2
			})
		else
			slot2()
		end
	end
end

return slot0
