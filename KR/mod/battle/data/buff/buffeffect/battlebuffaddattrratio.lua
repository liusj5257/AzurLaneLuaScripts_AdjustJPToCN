ys = ys or {}
slot0 = ys
slot1 = class("BattleBuffAddAttrRatio", slot0.Battle.BattleBuffAddAttr)
slot0.Battle.BattleBuffAddAttrRatio = slot1
slot1.__name = "BattleBuffAddAttrRatio"

slot1.Ctor = function(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)
end

slot1.GetEffectType = function(slot0)
	return uv0.Battle.BattleBuffEffect.FX_TYPE_MOD_ATTR
end

slot1.SetArgs = function(slot0, slot1, slot2)
	slot0._group = slot0._tempData.arg_list.group or slot2:GetID()
	slot0._attr = slot0._tempData.arg_list.attr
	slot0._attrBound = slot0._tempData.arg_list.attrBound
	slot0._number = slot0._tempData.arg_list.number * uv0.Battle.BattleAttr.GetBase(slot1, slot0._tempData.arg_list.convertAttr or slot0._attr) * 0.0001
	slot0._numberBase = slot0._number

	if slot0._attrBound then
		slot0._numberBase = math.min(slot0._numberBase, slot0._attrBound)
	end

	slot0._attrID = slot0._tempData.arg_list.attr_group_ID
end
