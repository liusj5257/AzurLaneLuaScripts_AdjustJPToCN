slot0 = class("WeekPtTask", import(".Task"))

slot0.Ctor = function(slot0, slot1)
	uv0.super.Ctor(slot0, slot1)

	slot0.isWeekTask = true
end

slot0.bindConfigTable = function(slot0)
	return pg.weekly_task_template
end

slot0.getConfig = function(slot0, slot1)
	slot3 = slot0:bindConfigTable()[slot0.configId]

	assert(slot3, slot0.configId)

	if slot3[slot1] then
		if slot1 == "award_display" then
			return {
				slot3[slot1]
			}
		else
			return slot3[slot1]
		end
	elseif slot1 == "name" or slot1 == "story_id" or slot1 == "story_icon" or slot1 == "scene" then
		return ""
	elseif slot1 == "type" then
		return 4
	elseif slot1 == "level" or slot1 == "visibility" then
		return 1
	elseif slot1 == "priority_type" then
		return 0
	elseif slot1 == "award_choice" then
		return nil
	else
		assert(false, "表 weekly_task_template 没有字段:" .. slot1)
	end
end

slot0.GetAward = function(slot0)
	return slot0:getConfig("award_display")[1]
end

slot0.IsFinished = function(slot0)
	return slot0:isFinish()
end

return slot0
