slot0 = class("CardPuzzleShip", BaseVO)

slot0.getShipArmor = function(slot0)
	return slot0:getConfig("armor")
end

slot0.getShipArmorName = function(slot0)
	return ArmorType.Type2Name(slot0:getShipArmor())
end

slot0.getGroupId = function(slot0)
	return pg.ship_data_template[slot0.configId].group_type
end

slot0.getGroupIdByConfigId = function(slot0)
	return math.floor(slot0 / 10)
end

slot0.getShipType = function(slot0)
	return pg.ship_data_statistics[slot0.configId].type
end

slot0.getNation = function(slot0)
	assert(false)
end

slot0.getPaintingName = function(slot0)
	slot1 = pg.ship_data_statistics[slot0].skin_id
	slot2 = pg.ship_skin_template[slot1]

	assert(slot2, "ship_skin_template not exist: " .. slot0 .. " " .. slot1)

	return slot2.painting
end

slot0.getName = function(slot0)
	return pg.ship_data_statistics[slot0.configId].name
end

slot0.getShipName = function(slot0)
	return pg.ship_data_statistics[slot0].name
end

slot0.Ctor = function(slot0, slot1)
	slot0.configId = slot1.template_id or slot1.configId
	slot0.level = slot1.level
	slot0.exp = slot1.exp

	if slot1.name and slot1.name ~= "" then
		slot0.name = slot1.name
	else
		assert(pg.ship_data_statistics[slot0.configId], "必须存在配置" .. slot0.configId)

		slot0.name = pg.ship_data_statistics[slot0.configId].name
	end

	slot0.equipmentSkins = {}
	slot0.equipments = {}

	if slot1.equip_info_list then
		slot2 = ipairs
		slot3 = slot1.equip_info_list or {}

		for slot5, slot6 in slot2(slot3) do
			slot0.equipments[slot5] = slot6.id > 0 and Equipment.New({
				count = 1,
				id = slot6.id,
				config_id = slot6.id,
				skinId = slot6.skinId
			}) or false
			slot0.equipmentSkins[slot5] = slot6.skinId > 0 and slot6.skinId or 0

			slot0:reletiveEquipSkin(slot5)
		end
	end

	slot0.skills = {}
	slot2 = ipairs
	slot3 = slot1.skill_id_list or {}

	for slot5, slot6 in slot2(slot3) do
		slot0:updateSkill(slot6)
	end

	slot0.star = slot0:getConfig("rarity")
	slot0.transforms = {}

	if not HXSet.isHxSkin() then
		slot0.skinId = slot1.skin_id or 0
	else
		slot0.skinId = 0
	end

	if slot0.skinId == 0 then
		slot0.skinId = slot0:getConfig("skin_id")
	end
end

slot0.getActiveEquipments = function(slot0)
	for slot5 = #Clone(slot0.equipments), 1, -1 do
		if slot1[slot5] then
			for slot10 = 1, slot5 - 1 do
				if slot1[slot10] and slot6:getConfig("equip_limit") ~= 0 and slot11:getConfig("equip_limit") == slot6:getConfig("equip_limit") then
					slot1[slot5] = false
				end
			end
		end
	end

	return slot1
end

slot0.getAllEquipments = function(slot0)
	return slot0.equipments
end

slot0.updateSkinId = function(slot0, slot1)
	slot0.skinId = slot1
end

slot0.getPrefab = function(slot0)
	slot1 = slot0.skinId
	slot2 = pg.ship_skin_template[slot1]

	assert(slot2, "ship_skin_template not exist: " .. slot0.configId .. " " .. slot1)

	return slot2.prefab
end

slot0.getPainting = function(slot0)
	slot1 = pg.ship_skin_template[slot0.skinId]

	assert(slot1, "ship_skin_template not exist: " .. slot0.configId .. " " .. slot0.skinId)

	return slot1.painting
end

slot0.GetSkinConfig = function(slot0)
	slot1 = pg.ship_skin_template[slot0.skinId]

	assert(slot1, "ship_skin_template not exist: " .. slot0.configId .. " " .. slot0.skinId)

	return slot1
end

slot0.updateEquip = function(slot0, slot1, slot2)
	assert(slot2 == nil or slot2.count == 1)

	slot3 = slot0.equipments[slot1]
	slot0.equipments[slot1] = slot2 and Clone(slot2) or false
end

slot0.getEquip = function(slot0, slot1)
	return Clone(slot0.equipments[slot1])
end

slot0.bindConfigTable = function(slot0)
	return pg.puzzle_ship_template
end

slot0.isAvaiable = function(slot0)
	return true
end

slot0.PROPERTIES = {
	AttributeType.Durability,
	AttributeType.Cannon,
	AttributeType.Torpedo,
	AttributeType.AntiAircraft,
	AttributeType.AntiSub,
	AttributeType.Air,
	AttributeType.Reload,
	AttributeType.Armor,
	AttributeType.Hit,
	AttributeType.Speed,
	AttributeType.Dodge,
	AttributeType.Luck
}
slot0.DIVE_PROPERTIES = {
	AttributeType.OxyMax,
	AttributeType.OxyCost,
	AttributeType.OxyRecovery,
	AttributeType.OxyRecoveryBench,
	AttributeType.OxyAttackDuration,
	AttributeType.OxyRaidDistance
}
slot0.SONAR_PROPERTIES = {
	AttributeType.SonarRange
}

slot0.getShipProperties = function(slot0)
	return slot0:getBaseProperties()
end

slot0.getBaseProperties = function(slot0)
	assert(slot0:getConfigTable(), "配置表没有这艘船" .. slot0.configId)

	slot2 = {}

	for slot6, slot7 in ipairs(uv0.PROPERTIES) do
		slot2[slot7] = slot1[slot7]
	end

	for slot6, slot7 in ipairs(uv0.DIVE_PROPERTIES) do
		slot2[slot7] = 0
	end

	for slot6, slot7 in ipairs(uv0.SONAR_PROPERTIES) do
		slot2[slot7] = 0
	end

	return slot2
end

slot0.getGiftProperties = function(slot0, slot1)
	slot2 = {}

	for slot6, slot7 in ipairs(uv0.PROPERTIES) do
		slot2[slot7] = 0
	end

	for slot6, slot7 in ipairs(uv0.DIVE_PROPERTIES) do
		slot2[slot7] = 0
	end

	for slot6, slot7 in ipairs(uv0.SONAR_PROPERTIES) do
		slot2[slot7] = 0
	end

	for slot6, slot7 in ipairs(slot1) do
		if slot7 then
			for slot12, slot13 in ipairs(slot7:GetAttributeBonus(slot0)) do
				if slot13 and slot2[slot13.type] then
					slot2[slot13.type] = slot2[slot13.type] + slot13.value
				end
			end
		end
	end

	return slot2
end

slot0.getProperties = function(slot0, slot1)
	slot2 = slot0:getShipProperties()
	slot3 = slot0:getGiftProperties(slot1)

	for slot7, slot8 in ipairs(uv0.PROPERTIES) do
		if slot8 == AttributeType.Speed then
			slot2[slot8] = slot2[slot8] + slot3[slot8]
		else
			slot2[slot8] = calcFloor(slot2[slot8] + slot3[slot8])
		end
	end

	for slot7, slot8 in ipairs(uv0.DIVE_PROPERTIES) do
		slot2[slot8] = slot2[slot8] + slot3[slot8]
	end

	for slot7, slot8 in ipairs(uv0.SONAR_PROPERTIES) do
		slot2[slot8] = slot2[slot8] + slot3[slot8]
	end

	return slot2
end

slot0.getTriggerSkills = function(slot0)
	_.each(slot0:getSkillEffects(), function (slot0)
		if slot0.type == "AddBuff" and slot0.arg_list and slot0.arg_list.buff_id then
			slot1 = slot0.arg_list.buff_id
			uv0[slot1] = {
				id = slot1,
				level = slot0.level
			}
		end
	end)

	return {}
end

slot0.GetEquipmentSkills = function(slot0)
	slot1 = {}

	for slot6, slot7 in ipairs(slot0:getActiveEquipments()) do
		if slot7 and slot7:getConfig("skill_id")[1] then
			slot1[slot8] = {
				level = 1,
				id = slot8
			}
		end
	end

	return slot1
end

slot0.getAllSkills = function(slot0)
	slot1 = Clone(slot0.skills)

	for slot5, slot6 in pairs(slot0:GetEquipmentSkills()) do
		slot1[slot5] = slot6
	end

	for slot5, slot6 in pairs(slot0:getTriggerSkills()) do
		slot1[slot5] = slot6
	end

	return slot1
end

slot0.getRarity = function(slot0)
	assert(false)
end

slot0.upgrade = function(slot0)
	assert(false)
end

slot0.getTeamType = function(slot0)
	return TeamType.GetTeamFromShipType(slot0:getShipType())
end

slot0.getMaxConfigId = function(slot0)
	slot1 = pg.ship_data_template
	slot2 = nil

	for slot6 = 4, 1, -1 do
		if slot1[tonumber(slot0.groupId .. slot6)] then
			slot2 = slot7

			break
		end
	end

	return slot2
end

slot0.fateSkillChange = function(slot0, slot1)
	if not slot0.skillChangeList then
		slot0.skillChangeList = slot0:isBluePrintShip() and slot0:getBluePrint():getChangeSkillList() or {}
	end

	for slot5, slot6 in ipairs(slot0.skillChangeList) do
		if slot6[1] == slot1 and slot0.skills[slot6[2]] then
			return slot6[2]
		end
	end

	return slot1
end

slot0.getSkillList = function(slot0)
	slot1 = pg.ship_data_template[slot0.configId]
	slot2 = Clone(slot1.buff_list_display)
	slot3 = Clone(slot1.buff_list)
	slot5 = 0

	if pg.ship_data_trans[slot0.groupId] and slot4.skill_id ~= 0 then
		slot6 = slot4.skill_id
		slot7 = pg.transform_data_template[slot6]

		if slot0.transforms[slot6] and slot7.skill_id ~= 0 then
			table.insert(slot3, slot7.skill_id)
		end
	end

	slot6 = {}

	for slot10, slot11 in ipairs(slot2) do
		for slot15, slot16 in ipairs(slot3) do
			if slot11 == slot16 then
				table.insert(slot6, slot0:fateSkillChange(slot11))
			end
		end
	end

	return slot6
end

slot0.getDisplaySkillIds = function(slot0)
	return _.map(pg.ship_data_template[slot0.configId].buff_list_display, function (slot0)
		return uv0:fateSkillChange(slot0)
	end)
end

slot0.getSkillIndex = function(slot0, slot1)
	for slot6, slot7 in ipairs(slot0:getSkillList()) do
		if slot1 == slot7 then
			return slot6
		end
	end
end

slot0.IsBgmSkin = function(slot0)
	return table.contains(slot0:GetSkinConfig().tag, ShipSkin.WITH_BGM)
end

slot0.GetSkinBgm = function(slot0)
	if slot0:IsBgmSkin() then
		return slot0:GetSkinConfig().bgm
	end
end

slot0.GetConfigId = function(slot0)
	return slot0.configId
end

slot0.GetDefaultCards = function(slot0)
	return slot0:getConfig("default_card")
end

return slot0
