slot0 = class("EventInfo", import(".BaseVO"))
slot0.StateNone = 0
slot0.StateActive = 1
slot0.StateFinish = 2

slot0.Ctor = function(slot0, slot1)
	slot0.id = slot1.id
	slot0.template = pg.collection_template[slot0.id]

	assert(slot0.template, "pg.collection_template>>>" .. slot0.id)

	slot0.finishTime = slot1.finish_time
	slot0.overTime = slot1.over_time
	slot0.shipIds = slot1.ship_id_list or {}
	slot0.ships = {}
	slot0.state = uv0.StateNone
	slot0.activityId = slot1.activity_id or 0

	if slot0.finishTime == 0 then
		slot0.state = uv0.StateNone
	elseif pg.TimeMgr.GetInstance():GetServerTime() <= slot0.finishTime then
		slot0.state = uv0.StateActive
	else
		slot0.state = uv0.StateFinish
	end
end

slot0.IsActivityType = function(slot0)
	return slot0.activityId > 0
end

slot0.IsStarting = function(slot0)
	return slot0.state ~= uv0.StateNone
end

slot0.SetActivityId = function(slot0, slot1)
	slot0.activityId = slot1
end

slot0.BelongActivity = function(slot0, slot1)
	return slot0.activityId > 0 and slot0.activityId == slot1
end

slot0.reachNum = function(slot0)
	return slot0.template.ship_num <= #slot0.ships
end

slot0.reachLevel = function(slot0)
	return #slot0.ships > 0 and _.any(slot0.ships, function (slot0)
		return uv0.template.ship_lv <= slot0.level
	end)
end

slot0.reachTypes = function(slot0)
	if table.getCount(slot0.ships) == 0 then
		return false
	end

	slot1 = true

	for slot5, slot6 in ipairs(slot0.ships) do
		if not table.contains(slot0.template.ship_type, slot6:getShipType()) then
			slot1 = false

			break
		end
	end

	return slot1
end

slot0.getOilConsume = function(slot0)
	return slot0.template.oil or 0
end

slot0.updateTime = function(slot0)
	slot1 = false

	if slot0.state == uv0.StateActive and slot0.finishTime < pg.TimeMgr.GetInstance():GetServerTime() then
		slot0.state = uv0.StateFinish
		slot1 = true
	end

	return slot1
end

slot0.getTypesStr = function(slot0)
	slot3 = false

	if #slot0.template.ship_type == #pg.ship_data_by_type.all then
		slot3 = true

		for slot7, slot8 in pairs(slot1.all) do
			if not table.contains(slot2, slot8) then
				slot3 = false

				break
			end
		end
	end

	if slot3 then
		return i18n("event_type_unlimit")
	else
		slot4 = ""

		for slot8, slot9 in ipairs(ShipType.FilterOverQuZhuType(slot2)) do
			slot4 = slot4 .. slot1[slot9].type_name .. (slot8 == #slot0.template.ship_type and "" or "、")
		end

		return i18n("event_condition_ship_type", slot4)
	end
end

slot1 = "EVENTINFO_FORMATION_KEY_"

slot0.ExistPrevFormation = function(slot0)
	return PlayerPrefs.HasKey(uv0 .. getProxy(PlayerProxy):getRawData().id)
end

slot0.GetPrevFormation = function(slot0)
	slot1 = getProxy(PlayerProxy)

	return _.map(string.split(PlayerPrefs.GetString(uv0 .. slot1:getRawData().id), "#"), function (slot0)
		return tonumber(slot0)
	end)
end

slot0.SavePrevFormation = function(slot0)
	if not slot0:CanRecordPrevFormation() then
		return
	end

	if #_.map(slot0.ships, function (slot0)
		return slot0.id
	end) == 0 then
		slot1 = slot0.shipIds
	end

	PlayerPrefs.SetString(uv0 .. getProxy(PlayerProxy):getRawData().id, table.concat(slot1, "#"))
	PlayerPrefs.Save()
end

slot0.CanRecordPrevFormation = function(slot0)
	return slot0.template.oil >= 800
end

slot0.GetCountDownTime = function(slot0)
	return slot0.state == EventInfo.StateNone and slot0.overTime > 0 and slot0.overTime - pg.TimeMgr.GetInstance():GetServerTime()
end

return slot0
