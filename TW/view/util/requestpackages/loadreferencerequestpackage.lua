slot0 = class("LoadReferenceRequestPackage", import(".RequestPackage"))

slot0.__call = function(slot0)
	if slot0.stopped then
		return
	end

	LoadAnyAsync(slot0.path, slot0.name, slot0.type, function (slot0)
		if uv0.stopped then
			return
		end

		if uv0.onLoaded then
			uv0.onLoaded(slot0)
		end
	end)

	return slot0
end

slot0.Ctor = function(slot0, slot1, slot2, slot3, slot4)
	slot0.path = slot1
	slot0.name = slot2
	slot0.type = slot3
	slot0.onLoaded = slot4
end

return slot0
