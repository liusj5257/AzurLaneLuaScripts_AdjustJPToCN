slot0 = class("DecodeGameModel")

slot0.SetData = function(slot0, slot1)
	slot0.data = slot1
	slot0.mapId = slot1.mapId
	slot0.unlocks = slot1.unlocks
	slot0.canUseCnt = slot1.canUseCnt
	slot0.passwords = slot1.passwords
	slot0.isFinished = slot1.isFinished
	slot0.mapIndexs = {}

	if slot0.isFinished then
		slot0:BuildMapIndexs()
	else
		for slot5 = 1, #DecodeGameConst.PASSWORD do
			table.insert(slot0.mapIndexs, false)
		end
	end

	slot0.maps = {}

	for slot5 = 1, DecodeGameConst.MAX_MAP_COUNT do
		table.insert(slot0.maps, slot0:InitMap(slot5))
	end

	slot0:SwitchMap(slot1.mapId)
end

slot0.BuildMapIndexs = function(slot0)
	slot2 = function(slot0)
		for slot4, slot5 in ipairs(DecodeGameConst.MAPS_PASSWORD) do
			if _.any(slot5, function (slot0)
				return slot0[1] == uv0[1] and slot0[2] == uv0[2]
			end) then
				return slot4
			end
		end
	end

	for slot6 = 1, #DecodeGameConst.PASSWORD do
		slot7 = slot1[slot6]

		table.insert(slot0.mapIndexs, DecodeGameConst.Vect2Index(slot7[1], slot7[2]) + (slot2(slot7) - 1) * DecodeGameConst.MAP_ROW * DecodeGameConst.MAP_COLUMN)
	end
end

slot0.InitMap = function(slot0, slot1)
	slot2 = function(slot0, slot1, slot2)
		return {
			isUsed = false,
			index = slot2,
			i = slot0,
			j = slot1,
			position = Vector3(DecodeGameConst.START_POS[1] + (slot1 - 1) * DecodeGameConst.BLOCK_SIZE[1], DecodeGameConst.START_POS[2] - (slot0 - 1) * DecodeGameConst.BLOCK_SIZE[2], 0),
			isUnlock = table.contains(uv0.unlocks, slot2)
		}
	end

	slot3 = {}
	slot5 = (slot1 - 1) * DecodeGameConst.MAP_ROW * DecodeGameConst.MAP_COLUMN

	for slot9 = 1, DecodeGameConst.MAP_ROW do
		for slot13 = 1, DecodeGameConst.MAP_COLUMN do
			table.insert(slot3, slot2(slot9, slot13, slot4 + 1))
		end
	end

	slot6 = slot0:IsUnlockMap(slot1)
	slot8 = {}

	for slot12 = 1, #slot0.passwords[slot1] do
		slot13 = slot7[slot12]

		table.insert(slot8, slot5 + DecodeGameConst.Vect2Index(slot13[1], slot13[2]))
	end

	return {
		id = slot1,
		items = slot3,
		isUnlock = slot6,
		password = slot7,
		passwordIndexs = slot8
	}
end

slot0.SwitchMap = function(slot0, slot1)
	slot0.map = slot0.maps[slot1]

	for slot5, slot6 in ipairs(slot0.map.items) do
		slot6.isUsed = slot0:IsUsedMapKey(slot6.index)
	end
end

slot0.ExitMap = function(slot0)
	slot0.map = nil
end

slot0.UnlockMapItem = function(slot0, slot1)
	for slot6, slot7 in ipairs(slot0.map.items) do
		if slot7.index == slot1 then
			slot7.isUnlock = true

			break
		end
	end

	if not table.contains(slot0.unlocks, slot1) then
		table.insert(slot0.unlocks, slot1)
	end

	slot0.canUseCnt = slot0.canUseCnt - 1
end

slot0.OnRepairMap = function(slot0)
	slot0.map.isUnlock = true
end

slot0.IsUnlock = function(slot0, slot1)
	return _.any(slot0.map.items, function (slot0)
		return slot0.index == uv0 and slot0.isUnlock
	end)
end

slot0.GetUnlockedCnt = function(slot0)
	return #slot0.unlocks
end

slot0.IsUnlockMap = function(slot0, slot1)
	slot2 = DecodeGameConst.MAP_ROW * DecodeGameConst.MAP_COLUMN
	slot3 = (slot1 - 1) * slot2 + 1

	return _.all(_.range(slot3, slot3 + slot2 - 1), function (slot0)
		return table.contains(uv0.unlocks, slot0)
	end)
end

slot0.GetUnlockMapCnt = function(slot0)
	slot1 = 0

	for slot5, slot6 in ipairs(slot0.maps) do
		if slot6.isUnlock then
			slot1 = slot1 + 1
		end
	end

	return slot1
end

slot0.CheckIndex = function(slot0, slot1)
	slot2 = #DecodeGameConst.MAPS_PASSWORD[1]
	slot3 = slot0:GetCurrMapKeyIndex(slot1)
	slot4 = (math.ceil(slot3 / slot2) - 1) * slot2 + 1
	slot5 = slot4 + slot2 - 1

	if slot3 == slot4 then
		return true
	end

	if slot4 < slot3 and slot0.mapIndexs[slot3 - 1] ~= false then
		return true
	end

	return false
end

slot0.IsUsedMapKey = function(slot0, slot1)
	return table.contains(slot0.mapIndexs, slot1)
end

slot0.IsMapKey = function(slot0, slot1)
	return _.any(slot0.map.passwordIndexs, function (slot0)
		return slot0 == uv0
	end)
end

slot0.InsertMapKey = function(slot0, slot1)
	slot0.mapIndexs[slot0:GetCurrMapKeyIndex(slot1)] = slot1
end

slot0.GetMapKeyStr = function(slot0, slot1)
	return DecodeGameConst.PASSWORDS[slot1 - (slot0.map.id - 1) * DecodeGameConst.MAP_ROW * DecodeGameConst.MAP_COLUMN]
end

slot0.ClearMapKeys = function(slot0)
	if slot0.isFinished then
		return
	end

	slot0.mapIndexs = _.map(slot0.mapIndexs, function (slot0)
		return false
	end)
end

slot0.GetCurrMapKeyIndex = function(slot0, slot1)
	slot3, slot4 = DecodeGameConst.Index2Vect(slot1 % (DecodeGameConst.MAP_ROW * DecodeGameConst.MAP_COLUMN))
	slot5 = nil

	for slot9, slot10 in ipairs(DecodeGameConst.PASSWORD) do
		if slot10[1] == slot3 and slot10[2] == slot4 then
			slot5 = slot9

			break
		end
	end

	assert(slot5)

	return slot5
end

slot0.IsSuccess = function(slot0)
	return _.all(slot0.mapIndexs, function (slot0)
		return slot0 ~= false
	end)
end

slot0.GetMapKeyStrs = function(slot0)
	return _.map(slot0.mapIndexs, function (slot0)
		if slot0 == false then
			return false
		end

		return DecodeGameConst.PASSWORDS[slot0 % (DecodeGameConst.MAP_ROW * DecodeGameConst.MAP_COLUMN)]
	end)
end

slot0.GetPassWordProgress = function(slot0)
	slot1 = 1
	slot2 = {}
	slot3 = 0

	for slot7 = 1, #DecodeGameConst.PASSWORD, DecodeGameConst.MAX_MAP_COUNT do
		if _.all(_.slice(slot0.mapIndexs, slot7, 3), function (slot0)
			return slot0 ~= false
		end) == true then
			slot3 = slot3 + 1
		end

		table.insert(slot2, slot8)
	end

	return slot2, slot3
end

slot0.Finish = function(slot0)
	slot0.isFinished = true
end

slot0.CanUnlockAward = function(slot0)
	return not slot0.isFinished and DecodeGameConst.MAX_MAP_COUNT * DecodeGameConst.MAP_ROW * DecodeGameConst.MAP_COLUMN <= slot0:GetUnlockedCnt()
end

slot0.Dispose = function(slot0)
end

return slot0
