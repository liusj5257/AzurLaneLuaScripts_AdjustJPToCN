slot0 = class("SkirmishVO", import(".BaseVO"))
slot0.TypeStoryOrExpedition = 1
slot0.TypeChapter = 2
slot0.StateInactive = 0
slot0.StateActive = 1
slot0.StateWorking = 2
slot0.StateClear = 3

slot0.bindConfigTable = function(slot0)
	return pg.activity_skirmish_event
end

slot0.Ctor = function(slot0, slot1)
	slot0.id = slot1
	slot0.configId = slot1
	slot0.state = uv0.StateInactive
	slot0.flagNew = nil
end

slot0.SetState = function(slot0, slot1)
	if (slot1 or 0) == slot0.state then
		return
	end

	if slot0.state ~= nil and slot1 == SkirmishVO.StateWorking then
		slot0.flagNew = true
	end

	slot0.state = slot1
end

slot0.GetState = function(slot0)
	return slot0.state
end

slot0.GetType = function(slot0)
	return slot0:getConfig("type")
end

slot0.GetEvent = function(slot0)
	return slot0:getConfig("event")
end

return slot0
