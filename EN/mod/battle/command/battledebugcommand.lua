ys = ys or {}
slot0 = ys
slot1 = slot0.Battle.BattleUnitEvent
slot2 = slot0.Battle.BattleEvent
slot3 = class("BattleDebugCommand", slot0.MVC.Command)
slot0.Battle.BattleDebugCommand = slot3
slot3.__name = "BattleDebugCommand"

slot3.Ctor = function(slot0)
	uv0.super.Ctor(slot0)
end

slot3.Initialize = function(slot0)
	slot0:Init()
	uv0.super.Initialize(slot0)

	slot0._dataProxy = slot0._state:GetProxyByName(uv1.Battle.BattleDataProxy.__name)
	slot0._uiMediator = slot0._state:GetMediatorByName(uv1.Battle.BattleUIMediator.__name)

	slot0:AddEvent()
end

slot3.DoPrologue = function(slot0)
	(function ()
		uv0._uiMediator:OpeningEffect(function ()
			uv0._uiMediator:ShowAutoBtn()
			uv0._uiMediator:ShowTimer()
			uv0._state:ChangeState(uv1.Battle.BattleState.BATTLE_STATE_FIGHT)
		end, SYSTEM_DEBUG)
		uv0._dataProxy:InitAllFleetUnitsWeaponCD()
		uv0._dataProxy:TirggerBattleStartBuffs()
	end)()
end

slot3.Init = function(slot0)
	slot0._unitDataList = {}
end

slot3.Clear = function(slot0)
	for slot4, slot5 in pairs(slot0._unitDataList) do
		slot0:UnregisterUnitEvent(slot5)

		slot0._unitDataList[slot4] = nil
	end
end

slot3.Reinitialize = function(slot0)
	slot0._state:Deactive()
	slot0:Clear()
	slot0:Init()
end

slot3.Dispose = function(slot0)
	uv0.Battle.BattleDataProxy.Update = uv0.Battle.BattleDebugConsole.ProxyUpdateNormal
	uv0.Battle.BattleDataProxy.UpdateAutoComponent = uv0.Battle.BattleDebugConsole.ProxyUpdateAutoComponentNormal

	slot0:Clear()
	slot0:RemoveEvent()
	uv1.super.Dispose(slot0)
end

slot3.AddEvent = function(slot0)
	slot0._dataProxy:RegisterEventListener(slot0, uv0.STAGE_DATA_INIT_FINISH, slot0.onInitBattle)
	slot0._dataProxy:RegisterEventListener(slot0, uv0.ADD_UNIT, slot0.onAddUnit)
	slot0._dataProxy:RegisterEventListener(slot0, uv0.REMOVE_UNIT, slot0.onRemoveUnit)
	slot0._dataProxy:RegisterEventListener(slot0, uv0.SHUT_DOWN_PLAYER, slot0.onPlayerShutDown)
end

slot3.RemoveEvent = function(slot0)
	slot0._dataProxy:UnregisterEventListener(slot0, uv0.STAGE_DATA_INIT_FINISH)
	slot0._dataProxy:UnregisterEventListener(slot0, uv0.ADD_UNIT)
	slot0._dataProxy:UnregisterEventListener(slot0, uv0.REMOVE_UNIT)
	slot0._dataProxy:UnregisterEventListener(slot0, uv0.SHUT_DOWN_PLAYER)
end

slot3.onInitBattle = function(slot0)
	slot0._userFleet = slot0._dataProxy:GetFleetByIFF(uv0.Battle.BattleConfig.FRIENDLY_CODE)
end

slot3.onAddUnit = function(slot0, slot1)
	slot3 = slot1.Data.unit

	slot0:RegisterUnitEvent(slot3)

	slot0._unitDataList[slot3:GetUniqueID()] = slot3

	if slot1.Data.type ~= uv0.Battle.BattleConst.UnitType.ENEMY_UNIT and slot2 ~= uv0.Battle.BattleConst.UnitType.BOSS_UNIT and slot2 ~= uv0.Battle.BattleConst.UnitType.MINION_UNIT and slot2 ~= uv0.Battle.BattleConst.UnitType.NPC_UNIT and slot2 == uv0.Battle.BattleConst.UnitType.BOSS_UNIT then
		-- Nothing
	end
end

slot3.RegisterUnitEvent = function(slot0, slot1)
	slot1:RegisterEventListener(slot0, uv0.WILL_DIE, slot0.onWillDie)
	slot1:RegisterEventListener(slot0, uv0.DYING, slot0.onUnitDying)

	if slot1:GetUnitType() == uv1.Battle.BattleConst.UnitType.PLAYER_UNIT then
		slot1:RegisterEventListener(slot0, uv0.SHUT_DOWN_PLAYER, slot0.onShutDownPlayer)
	end
end

slot3.UnregisterUnitEvent = function(slot0, slot1)
	slot1:UnregisterEventListener(slot0, uv0.WILL_DIE)
	slot1:UnregisterEventListener(slot0, uv0.DYING)

	if slot1:GetUnitType() == uv1.Battle.BattleConst.UnitType.PLAYER_UNIT then
		slot1:UnregisterEventListener(slot0, uv0.SHUT_DOWN_PLAYER)
	end
end

slot3.onRemoveUnit = function(slot0, slot1)
	if slot0._unitDataList[slot1.Data.UID] == nil then
		return
	end

	slot0:UnregisterUnitEvent(slot3)

	slot0._unitDataList[slot2] = nil
end

slot3.onPlayerShutDown = function(slot0, slot1)
	if slot1.Data.unit == slot0._userFleet:GetMainList() == 0 then
		slot0._dataProxy:KillAllAirStrike()
		slot0._dataProxy:KillAllEnemy()
		slot0._dataProxy:CLSBullet(uv0.Battle.BattleConfig.FRIENDLY_CODE)
		slot0._dataProxy:CLSBullet(uv0.Battle.BattleConfig.FOE_CODE)

		for slot7, slot8 in ipairs(slot0._dataProxy:GetInitData().MainUnitList) do
			slot0._dataProxy:SpawnMain(slot8, uv0.Battle.BattleConfig.FRIENDLY_CODE)
		end
	end

	if #slot0._userFleet:GetScoutList() == 0 then
		slot0._dataProxy:KillAllAirStrike()
		slot0._dataProxy:KillAllEnemy()
		slot0._dataProxy:CLSBullet(uv0.Battle.BattleConfig.FRIENDLY_CODE)
		slot0._dataProxy:CLSBullet(uv0.Battle.BattleConfig.FOE_CODE)

		for slot7, slot8 in ipairs(slot0._dataProxy:GetInitData().VanguardUnitList) do
			slot0._dataProxy:SpawnVanguard(slot8, uv0.Battle.BattleConfig.FRIENDLY_CODE)
		end
	end
end

slot3.onUnitDying = function(slot0, slot1)
	slot0._dataProxy:KillUnit(slot1.Dispatcher:GetUniqueID())
end

slot3.onWillDie = function(slot0, slot1)
	slot2 = slot1.Dispatcher

	slot0._dataProxy:CalcBattleScoreWhenDead(slot2)

	slot3 = slot0._dataProxy:IsThereBoss()

	if slot2:IsBoss() and not slot3 then
		slot0._dataProxy:KillAllEnemy()
	end
end

slot3.onShutDownPlayer = function(slot0, slot1)
	slot0._dataProxy:ShutdownPlayerUnit(slot1.Dispatcher:GetUniqueID())
end
