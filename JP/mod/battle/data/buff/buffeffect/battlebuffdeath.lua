ys = ys or {}
slot0 = ys
slot0.Battle.BattleBuffDeath = class("BattleBuffDeath", slot0.Battle.BattleBuffEffect)
slot0.Battle.BattleBuffDeath.__name = "BattleBuffDeath"
slot1 = slot0.Battle.BattleBuffDeath

slot1.Ctor = function(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)
end

slot1.SetArgs = function(slot0, slot1, slot2)
	if slot0._tempData.arg_list.time then
		slot0._time = slot3.time + pg.TimeMgr.GetInstance():GetCombatTime()
	end

	slot0._maxX = slot3.maxX
	slot0._minX = slot3.minX
	slot0._maxY = slot3.maxY
	slot0._minY = slot3.minY
	slot0._countType = slot3.countType
	slot0._instantkill = slot0._tempData.arg_list.instant_kill
end

slot1.onAttach = function(slot0, slot1, slot2, slot3)
	if slot0._instantkill then
		slot0:DoDead(slot1)
	end
end

slot1.onUpdate = function(slot0, slot1, slot2, slot3)
	slot4 = slot3.timeStamp

	if slot0._time and slot0._time < slot4 then
		slot1:SetDeathReason(uv0.Battle.BattleConst.UnitDeathReason.DESTRUCT)
		slot0:DoDead(slot1)
	else
		slot5 = slot1:GetPosition()

		if slot0._maxX and slot0._maxX <= slot5.x then
			slot1:SetDeathReason(uv0.Battle.BattleConst.UnitDeathReason.LEAVE)
			slot0:DoDead(slot1)
		elseif slot0._minX and slot5.x <= slot0._minX then
			slot1:SetDeathReason(uv0.Battle.BattleConst.UnitDeathReason.LEAVE)
			slot0:DoDead(slot1)
		elseif slot0._maxY and slot0._maxY <= slot5.z then
			slot1:SetDeathReason(uv0.Battle.BattleConst.UnitDeathReason.LEAVE)
			slot0:DoDead(slot1)
		elseif slot0._minY and slot5.z <= slot0._minY then
			slot1:SetDeathReason(uv0.Battle.BattleConst.UnitDeathReason.LEAVE)
			slot0:DoDead(slot1)
		end
	end
end

slot1.onBattleBuffCount = function(slot0, slot1, slot2, slot3)
	if slot3.countType == slot0._countType then
		slot0:DoDead(slot1)
	end
end

slot1.DoDead = function(slot0, slot1)
	slot1:SetCurrentHP(0)
	slot1:DeadAction()
end
