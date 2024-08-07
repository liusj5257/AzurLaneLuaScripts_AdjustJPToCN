slot0 = class("BaseEntityBank", import(".BaseEntityPool"))
slot0.Fields = {
	marks = "table"
}

slot0.Build = function(slot0)
	uv0.super.Build(slot0)

	slot0.marks = {}
end

slot0.Fetch = function(slot0, slot1)
	slot2 = slot0:Get(slot1)
	slot0.marks[slot1] = slot0.marks[slot1] or {}

	table.insert(slot0.marks[slot1], slot2)

	return slot2
end

slot0.Recycle = function(slot0, slot1)
	if slot0.marks[slot1] then
		for slot6, slot7 in ipairs(slot2) do
			slot0:Return(slot7, slot1)
		end

		slot0.marks[slot1] = nil
	end
end

slot0.RecycleAll = function(slot0)
	for slot4, slot5 in pairs(slot0.marks) do
		for slot9, slot10 in ipairs(slot5) do
			slot0:Return(slot10, slot4)
		end
	end

	slot0.marks = {}
end

return slot0
