slot0 = class("MiniGameHubData", import(".BaseVO"))

slot0.Ctor = function(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)

	slot0.id = slot1.id
	slot0.configId = slot1.id
	slot0.count = slot1.available_cnt or slot0:getConfig("reborn_times")
	slot0.usedtime = slot1.used_cnt or 0
	slot0.ultimate = slot1.ultimate or 0
	slot0.highScores = {}

	underscore.each(slot1.maxscores or {}, function (slot0)
		uv0.highScores[slot0.key] = {
			slot0.value1,
			slot0.value2
		}
	end)
end

slot0.bindConfigTable = function(slot0)
	return pg.mini_game_hub
end

slot0.UpdateData = function(slot0, slot1)
	slot0.count = slot1.available_cnt or slot0.count
	slot0.usedtime = slot1.used_cnt or slot0.usedtime
	slot0.ultimate = slot1.ultimate or slot0.ultimate
	slot2 = slot1.maxscores

	underscore.each(slot1.maxscores or {}, function (slot0)
		uv0.highScores[slot0.key] = {
			slot0.value1,
			slot0.value2
		}
	end)
	print("Hub 更新", "ID:", tostring(slot0.id), "Count:", tostring(slot0.count), "UsedTime:", tostring(slot0.usedtime), "Ultimate:", tostring(slot0.ultimate))
end

slot0.CheckInTime = function(slot0)
	if slot0:getConfig("act_id") ~= nil then
		if pg.activity_template[slot1] then
			return pg.TimeMgr.GetInstance():inTime(slot2.time)
		end
	else
		return true
	end
end

return slot0
