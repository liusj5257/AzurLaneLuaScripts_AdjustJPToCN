slot0 = class("NewHpShareActBossResultGradePage", import("..activityBoss.NewActivityBossResultGradePage"))

slot0.LoadGrade = function(slot0, slot1)
	LoadImageSpriteAsync("battlescore/grade_label_clear", slot0.gradeTxt, true)

	if slot1 then
		slot1()
	end
end

slot0.GetContributionPoint = function(slot0)
	slot1 = slot0.contextData
	slot3 = pg.activity_event_worldboss[pg.activity_template[slot1.actId].config_id].damage_resource
	slot4 = 0

	for slot8, slot9 in ipairs(slot1.drops) do
		if slot9.configId == slot3 then
			slot4 = slot9.count
		end
	end

	return slot4
end

slot0.GetGetObjectives = function(slot0)
	slot2 = {}

	table.insert(slot2, {
		text = setColorStr(i18n("battle_result_total_damage"), "#FFFFFFFF"),
		value = setColorStr(slot0.contextData.statistics.specificDamage, COLOR_BLUE)
	})
	table.insert(slot2, {
		text = setColorStr(i18n("battle_result_contribution"), "#FFFFFFFF"),
		value = setColorStr(slot0:GetContributionPoint(), COLOR_YELLOW)
	})

	return slot2
end

return slot0
