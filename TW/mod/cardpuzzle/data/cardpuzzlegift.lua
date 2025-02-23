slot0 = class("CardPuzzleGift", BaseVO)
slot0.TYPE = {
	GLOBAL = 1,
	USABLE = 3,
	BATTLE = 2
}
slot0.EFFECT_TYPE = {
	BATTLE_BUFF = 2,
	COIN_BONUS = 5,
	ROGUE_DROP_BONUS = 3,
	CARD_CLIPPING = 4,
	GLOBAL_ATTRIBUTE_BONUS = 1
}

slot0.CreateByNetData = function(slot0)
	slot1 = {}

	for slot5 = 1, slot0.num do
		table.insert(slot1, uv0.New({
			configId = slot0.id
		}))
	end

	return slot1
end

slot0.bindConfigTable = function(slot0)
	return pg.puzzle_relics_template
end

slot0.GetIconPath = function(slot0)
	return "roguegifts/" .. slot0:getConfig("icon")
end

slot0.GetConfigId = function(slot0)
	return slot0.configId
end

slot0.GetName = function(slot0)
	return slot0:getConfig("name")
end

slot0.GetType = function(slot0)
	return slot0:getConfig("type")
end

slot0.GetDesc = function(slot0)
	return slot0:getConfig("desc")
end

slot0.GetRarity = function(slot0)
	return slot0:getConfig("rarity")
end

slot0.GetEffects = function(slot0)
	return _.map(slot0:getConfig("arg_list"), function (slot0)
		slot1 = pg.puzzle_relics_effect[slot0]

		assert(slot1)

		return slot1
	end)
end

slot0.GetAttributeBonus = function(slot0, slot1)
	slot2 = {}

	if slot0:GetType() ~= uv0.TYPE.GLOBAL then
		return slot2
	end

	for slot6, slot7 in ipairs(slot0:GetEffects()) do
		if slot7.type == uv0.EFFECT_TYPE.GLOBAL_ATTRIBUTE_BONUS then
			for slot11, slot12 in ipairs(slot7.arg_list) do
				slot14 = slot12[2]
				slot15 = slot12[3]

				if table.contains(slot12[1], slot1:getShipType()) then
					table.insert(slot2, {
						type = CardPuzzleShip.PROPERTIES[slot14],
						value = slot15
					})
				end
			end
		end
	end

	return slot2
end

return slot0
