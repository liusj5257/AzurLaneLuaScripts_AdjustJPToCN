ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleEvent
slot0.Battle.BattleControllerWeaponCommand = class("BattleControllerWeaponCommand", slot0.MVC.Command)
slot0.Battle.BattleControllerWeaponCommand.__name = "BattleControllerWeaponCommand"
slot2 = slot0.Battle.BattleControllerWeaponCommand

slot2.Ctor = function(slot0)
	uv0.super.Ctor(slot0)
end

slot2.Initialize = function(slot0)
	uv0.super.Initialize(slot0)

	slot0._dataProxy = slot0._state:GetProxyByName(uv1.Battle.BattleDataProxy.__name)

	slot0:InitBattleEvent()

	slot0._focusBlockCast = false
end

slot2.ActiveBot = function(slot0, slot1, slot2)
	slot0._manualWeaponAutoBot:SetActive(slot1, slot2)
	slot0._joyStickAutoBot:SetActive(slot1)
end

slot2.TryAutoSub = function(slot0)
	if uv0.Battle.BattleState.IsAutoSubActive(slot0:GetState():GetBattleType()) and slot0._dataProxy:GetFleetByIFF(uv0.Battle.BattleConfig.FRIENDLY_CODE)._submarineVO:GetUseable() and slot3:GetCount() > 0 then
		slot0._dataProxy:SubmarineStrike(uv0.Battle.BattleConfig.FRIENDLY_CODE)
		slot3:Cast()
	end
end

slot2.GetWeaponBot = function(slot0)
	return slot0._manualWeaponAutoBot
end

slot2.GetBotActiveDuration = function(slot0)
	return slot0._manualWeaponAutoBot:GetTotalActiveDuration()
end

slot2.GetStickBot = function(slot0)
	return slot0._joyStickAutoBot
end

slot2.InitBattleEvent = function(slot0)
	slot0._dataProxy:RegisterEventListener(slot0, uv0.COMMON_DATA_INIT_FINISH, slot0.onUnitInitFinish)
	slot0._dataProxy:RegisterEventListener(slot0, uv0.JAMMING, slot0.onJamming)
end

slot2.Update = function(slot0, slot1)
	if slot0._jammingFlag then
		return
	end

	if not slot0._focusBlockCast then
		slot0._manualWeaponAutoBot:Update()
	end

	for slot5, slot6 in pairs(slot0._fleetList) do
		slot6:UpdateManualWeaponVO(slot1)
	end
end

slot2.onJamming = function(slot0, slot1)
	slot0._jammingFlag = slot1.Data.jammingFlag
end

slot2.onUnitInitFinish = function(slot0, slot1)
	slot0._fleetList = slot0._dataProxy:GetFleetList()
	slot2 = slot0._dataProxy:GetFleetByIFF(uv0.Battle.BattleConfig.FRIENDLY_CODE)

	slot2:RegisterEventListener(slot0, uv1.REFRESH_FLEET_FORMATION, slot0.onFleetFormationUpdate)
	slot2:RegisterEventListener(slot0, uv1.OVERRIDE_AUTO_BOT, slot0.onOverrideAutoBot)

	slot0._manualWeaponAutoBot = uv0.Battle.BattleManualWeaponAutoBot.New(slot2)
	slot0._joyStickAutoBot = uv0.Battle.BattleJoyStickAutoBot.New(slot0._dataProxy, slot2)

	uv0.Battle.BattleCameraUtil.GetInstance():RegisterEventListener(slot0, uv1.CAMERA_FOCUS, slot0.onCameraFocus)
end

slot2.onFleetFormationUpdate = function(slot0, slot1)
	slot0._joyStickAutoBot:FleetFormationUpdate()
end

slot2.onOverrideAutoBot = function(slot0, slot1)
	slot0._joyStickAutoBot:SwitchStrategy(uv0.Battle.BattleJoyStickAutoBot.AUTO_PILOT)
end

slot2.onCameraFocus = function(slot0, slot1)
	if slot1.Data.unit ~= nil then
		slot0._focusBlockCast = true
	else
		LeanTween.delayedCall(slot2.duration + slot2.extraBulletTime, System.Action(function ()
			uv0._focusBlockCast = false
		end))
	end
end

slot2.Dispose = function(slot0)
	slot1 = slot0._dataProxy:GetFleetByIFF(uv0.Battle.BattleConfig.FRIENDLY_CODE)

	slot1:UnregisterEventListener(slot0, uv1.REFRESH_FLEET_FORMATION)
	slot1:UnregisterEventListener(slot0, uv1.OVERRIDE_AUTO_BOT)
	slot0._dataProxy:UnregisterEventListener(slot0, uv1.COMMON_DATA_INIT_FINISH)
	uv0.Battle.BattleCameraUtil.GetInstance():UnregisterEventListener(slot0, uv1.CAMERA_FOCUS)
	slot0._joyStickAutoBot:Dispose()

	slot0._joyStickAutoBot = nil

	slot0._manualWeaponAutoBot:Dispose()

	slot0._manualWeaponAutoBot = nil

	uv2.super.Dispose(slot0)
end
