ys = ys or {}
slot0 = ys
slot0.Battle.BattleBuffLockHealth = class("BattleBuffLockHealth", slot0.Battle.BattleBuffEffect)
slot0.Battle.BattleBuffLockHealth.__name = "BattleBuffLockHealth"
slot1 = slot0.Battle.BattleBuffLockHealth

slot1.Ctor = function(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)
end

slot1.SetArgs = function(slot0, slot1, slot2)
	slot0._rate = slot0._tempData.arg_list.rate
	slot0._threshold = slot0._tempData.arg_list.value
end

slot1.onAttach = function(slot0, slot1, slot2)
	if slot0._rate then
		slot0._threshold = math.floor(slot1:GetMaxHP() * slot0._rate)
	end
end

slot1.onTrigger = function(slot0, slot1, slot2, slot3)
	if slot1:GetCurrentHP() <= slot0._threshold then
		slot3.damage = 0
	elseif slot4 - slot3.damage < slot0._threshold then
		slot3.damage = slot4 - slot0._threshold
	end
end
