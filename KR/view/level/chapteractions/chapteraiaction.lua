slot0 = class("ChapterAIAction")

slot0.Ctor = function(slot0, slot1)
	slot0.line = {
		row = slot1.ai_pos.row,
		column = slot1.ai_pos.column
	}
	slot0.stgId = slot1.strategy_id

	if slot1.target_pos then
		slot0.stgTarget = {
			row = slot1.target_pos.row,
			column = slot1.target_pos.column
		}
	end

	slot0.movePath = _.map(slot1.move_path, function (slot0)
		return {
			row = slot0.row,
			column = slot0.column
		}
	end)
	slot0.shipUpdate = _.map(slot1.ship_update, function (slot0)
		return {
			id = slot0.id,
			hpRant = slot0.hp_rant
		}
	end)
	slot0.cellUpdates = {}

	_.each(slot1.map_update, function (slot0)
		if slot0.item_type ~= ChapterConst.AttachNone and slot0.item_type ~= ChapterConst.AttachBorn and slot0.item_type ~= ChapterConst.AttachBorn_Sub and (slot0.item_type ~= ChapterConst.AttachStory or slot0.item_data ~= ChapterConst.StoryTrigger) then
			table.insert(uv0.cellUpdates, slot0.item_type == ChapterConst.AttachChampion and ChapterChampionPackage.New(slot0) or ChapterCell.New(slot0))
		end
	end)

	slot0.actType = slot1.act_type
	slot0.hp_del = slot1.hp_del
end

slot0.PlayAIAction = function(slot0, slot1, slot2, slot3)
	if slot1:getChapterCell(slot0.line.row, slot0.line.column) and slot4.attachment == ChapterConst.AttachLandbase and not table.equal(slot0.stgTarget, {
		row = 9999,
		columns = 9999
	}) then
		if pg.land_based_template[slot4.attachmentId].type == ChapterConst.LBCoastalGun then
			slot6 = slot2.viewComponent

			slot6:doPlayAnim("coastalgun", function (slot0)
				setActive(slot0, false)
				uv0()
			end)
		elseif slot5.type == ChapterConst.LBHarbor then
			if not slot0.hp_del or slot0.hp_del <= 0 then
				slot3()
			end

			slot2.viewComponent.grid:PlayAttachmentEffect(slot4.row, slot4.column, "huoqiubaozha", Vector2.zero)
			slot3()
		elseif slot5.type == ChapterConst.LBDock then
			slot3()
		elseif slot5.type == ChapterConst.LBAntiAir then
			slot6 = slot2.viewComponent

			slot6:doPlayAnim("AntiAirFire", function (slot0)
				setActive(slot0, false)
				uv0.viewComponent.grid:PlayAttachmentEffect(uv1.stgTarget.row, uv1.stgTarget.column, "huoqiubaozha", Vector2.zero, uv2)
			end)
		else
			assert(false)
		end

		return
	end

	if slot0.stgId > 0 then
		if slot0.stgId == ChapterConst.StrategySonarDetect then
			_.each(slot0.cellUpdates, function (slot0)
				if isa(slot0, ChapterChampionPackage) then
					table.insert(uv0, slot0)
				end
			end)
			slot2.viewComponent.grid:PlaySonarDetectAnim({}, slot3)

			return
		end

		assert(false)
	end

	slot5 = slot1:getChampion(slot0.line.row, slot0.line.column)
	slot7 = slot0.movePath[#slot0.movePath] or slot0.line

	if slot1:getChampionIndex(slot0.line.row, slot0.line.column) then
		seriesAsync({
			function (slot0)
				if #uv0.movePath > 0 then
					uv1.viewComponent.grid:moveChampion(uv2, uv0.movePath, Clone(uv0.movePath), slot0)
				else
					slot0()
				end
			end,
			function (slot0)
				if #uv0.shipUpdate > 0 then
					uv1.viewComponent:doPlayEnemyAnim(uv2, "SubSairenTorpedoUI", slot0)
				else
					slot0()
				end
			end,
			function (slot0)
				slot1 = false

				if uv0.actType == ChapterConst.ActType_SubmarineHunting and #uv0.cellUpdates > 0 then
					_.each(uv0.cellUpdates, function (slot0)
						if uv0.row == slot0.row and uv0.column == slot0.column and isa(slot0, ChapterChampionPackage) then
							uv1:TryPlayChampionSubAnim(uv2, slot0, uv3, uv4)

							uv5 = true
						end
					end)
				end

				if not slot1 then
					slot0()
				end
			end,
			function (slot0)
				uv0()
			end
		})

		return
	end

	assert(false)
end

slot0.TryPlayChampionSubAnim = function(slot0, slot1, slot2, slot3, slot4)
	if (slot2.flag == ChapterConst.CellFlagDiving or slot3.flag == ChapterConst.CellFlagDiving) and (slot2.flag == ChapterConst.CellFlagActive or slot3.flag == ChapterConst.CellFlagActive) then
		slot1.viewComponent.grid:PlayChampionSubmarineAnimation(slot3, slot2.flag == ChapterConst.CellFlagDiving, slot4)

		return
	end

	slot4()
end

slot0.applyTo = function(slot0, slot1, slot2)
	if slot1:getChapterCell(slot0.line.row, slot0.line.column) and slot3.attachment == ChapterConst.AttachLandbase and not table.equal(slot0.stgTarget, {
		row = 9999,
		column = 9999
	}) then
		if pg.land_based_template[slot3.attachmentId].type == ChapterConst.LBCoastalGun then
			return slot0:applyToCoastalGun(slot1, slot3, slot2)
		elseif slot4.type == ChapterConst.LBHarbor then
			return slot0:applyToHarbor(slot1, slot3, slot2)
		elseif slot4.type == ChapterConst.LBDock then
			return slot0:applyToDock(slot1, slot3, slot2)
		elseif slot4.type == ChapterConst.LBAntiAir then
			return slot0:applyToAntiAir(slot1, slot3, slot2)
		else
			return false, "Trouble with Attach LandBased"
		end
	end

	if slot0.stgId > 0 then
		return slot0:applyToStrategy(slot1, slot0.stgId, slot2)
	end

	if slot1:getChampion(slot0.line.row, slot0.line.column) then
		return slot0:applyToChampion(slot1, slot4, slot2)
	end

	return false, "can not find any object at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
end

slot0.applyToChampion = function(slot0, slot1, slot2, slot3)
	if slot2.flag == ChapterConst.CellFlagDisabled then
		return false, "can not apply ai to dead champion at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
	end

	slot4 = 0
	slot5 = 0
	slot6 = slot0.line

	if slot0.stgId > 0 and not pg.strategy_data_template[slot0.stgId] then
		return false, "can not find strategy: " .. slot0.stgId
	end

	if #slot0.movePath > 0 then
		slot6 = slot0.movePath[#slot0.movePath]

		if _.any(slot0.movePath, function (slot0)
			return not uv0:getChapterCell(slot0.row, slot0.column) or not slot1:IsWalkable()
		end) then
			return false, "invalide move path"
		end
	end

	if #slot0.shipUpdate > 0 and not slot1:getFleet(FleetType.Normal, slot6.row, slot6.column) then
		return false, "can not find fleet at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
	end

	if not slot3 then
		if #slot0.movePath > 0 then
			slot2.row = slot6.row
			slot2.column = slot6.column
			slot4 = bit.bor(slot4, ChapterConst.DirtyChampionPosition)
		end

		if slot1:existFleet(FleetType.Submarine, slot2.row, slot2.column) then
			slot4 = bit.bor(slot4, ChapterConst.DirtyFleet)
		end

		if slot0.actType == ChapterConst.ActType_SubmarineHunting and slot1:getChapterCell(slot6.row, slot6.column) and slot7.attachment == ChapterConst.AttachBarrier then
			slot7.flag = ChapterConst.CellFlagDisabled

			slot1:mergeChapterCell(slot7)

			slot4 = bit.bor(slot4, ChapterConst.DirtyAttachment)
		end

		if #slot0.shipUpdate > 0 then
			_.each(slot0.shipUpdate, function (slot0)
				uv0:updateFleetShipHp(slot0.id, slot0.hpRant)
			end)

			slot4 = bit.bor(slot4, ChapterConst.DirtyFleet)
		end

		if #slot0.cellUpdates > 0 then
			_.each(slot0.cellUpdates, function (slot0)
				if isa(slot0, ChapterChampionPackage) then
					uv1 = bit.bor(uv1, uv0:mergeChampion(slot0) and ChapterConst.DirtyChampionPosition or ChapterConst.DirtyChampion)
				else
					uv0:mergeChapterCell(slot0)

					uv1 = bit.bor(uv1, ChapterConst.DirtyAttachment)
				end
			end)

			slot5 = bit.bor(slot5, ChapterConst.DirtyAutoAction)
		end
	end

	return true, slot4, slot5
end

slot0.applyToStrategy = function(slot0, slot1, slot2, slot3)
	if not pg.strategy_data_template[slot2] then
		return false, "can not find strategy: " .. slot2
	end

	slot5 = 0

	if not slot3 and slot0.stgId == ChapterConst.StrategySonarDetect then
		_.each(slot0.cellUpdates, function (slot0)
			if isa(slot0, ChapterChampionPackage) then
				uv0:mergeChampion(slot0)

				uv1 = bit.bor(uv1, ChapterConst.DirtyChampion)
			else
				uv0:mergeChapterCell(slot0)

				uv1 = bit.bor(uv1, ChapterConst.DirtyAttachment)
			end
		end)
	end

	return true, slot5
end

slot0.applyToCoastalGun = function(slot0, slot1, slot2, slot3)
	if slot2.flag == ChapterConst.CellFlagDisabled then
		return false, "can not apply ai to dead coastalgun at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
	end

	slot4 = 0
	slot5 = 0

	if not slot1:getFleet(FleetType.Normal, slot0.stgTarget.row, slot0.stgTarget.column) then
		return false, "can not find fleet at: [" .. slot0.stgTarget.row .. ", " .. slot0.stgTarget.column .. "]"
	end

	if not slot3 then
		slot6:increaseSlowSpeedFactor()

		slot4 = bit.bor(slot4, ChapterConst.DirtyFleet)

		_.each(slot0.cellUpdates, function (slot0)
			if isa(slot0, ChapterChampionPackage) then
				uv0:mergeChampion(slot0)

				uv1 = bit.bor(uv1, ChapterConst.DirtyChampion)
			else
				uv0:mergeChapterCell(slot0)

				uv1 = bit.bor(uv1, ChapterConst.DirtyAttachment)
			end
		end)

		if #slot0.cellUpdates > 0 then
			slot5 = bit.bor(slot5, ChapterConst.DirtyAutoAction)
		end
	end

	return true, slot4, slot5
end

slot0.applyToHarbor = function(slot0, slot1, slot2, slot3)
	if slot2.flag == ChapterConst.CellFlagDisabled then
		return false, "can not apply ai to dead Harbor at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
	end

	slot4 = 0
	slot5 = 0

	if not slot1:getChampion(slot0.stgTarget.row, slot0.stgTarget.column) then
		return false, "can not find champion at: [" .. slot0.stgTarget.row .. ", " .. slot0.stgTarget.column .. "]"
	end

	if not slot3 then
		slot1.BaseHP = math.max(slot1.BaseHP - slot0.hp_del, 0)

		slot1:RemoveChampion(slot6)

		slot4 = bit.bor(slot4, ChapterConst.DirtyBase, ChapterConst.DirtyChampion)
		slot5 = bit.bor(slot5, ChapterConst.DirtyAutoAction)

		if #slot0.cellUpdates > 0 then
			_.each(slot0.cellUpdates, function (slot0)
				if isa(slot0, ChapterChampionPackage) then
					slot1 = uv0:mergeChampion(slot0)
					uv1 = bit.bor(uv1, ChapterConst.DirtyChampion)
				else
					uv0:mergeChapterCell(slot0)

					uv1 = bit.bor(uv1, ChapterConst.DirtyAttachment)
				end
			end)
		end
	end

	return true, slot4, slot5
end

slot0.applyToDock = function(slot0, slot1, slot2, slot3)
	if slot2.flag == ChapterConst.CellFlagDisabled then
		return false, "can not apply ai to dead Dock at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
	end

	slot4 = 0
	slot5 = 0

	if not slot1:getFleet(FleetType.Normal, slot0.stgTarget.row, slot0.stgTarget.column) then
		return false, "can not find fleet at: [" .. slot0.stgTarget.row .. ", " .. slot0.stgTarget.column .. "]"
	end

	if not slot3 then
		_.each(slot0.cellUpdates, function (slot0)
			if isa(slot0, ChapterCell) then
				uv0:mergeChapterCell(slot0)

				uv1 = bit.bor(uv1, ChapterConst.DirtyAttachment)
			end
		end)
		_.each(slot0.shipUpdate, function (slot0)
			uv0:updateFleetShipHp(slot0.id, slot0.hpRant)
		end)

		slot4 = bit.bor(slot4, ChapterConst.DirtyFleet)
	end

	return true, slot4
end

slot0.applyToAntiAir = function(slot0, slot1, slot2, slot3)
	if slot2.flag == ChapterConst.CellFlagDisabled then
		return false, "can not apply ai to dead antiairGun at: [" .. slot0.line.row .. ", " .. slot0.line.column .. "]"
	end

	slot4 = 0
	slot5 = 0

	if not slot1:getChampion(slot0.stgTarget.row, slot0.stgTarget.column) then
		return false, "can not find champion at: [" .. slot0.stgTarget.row .. ", " .. slot0.stgTarget.column .. "]"
	end

	if not slot3 then
		slot1:RemoveChampion(slot6)

		slot4 = bit.bor(slot4, ChapterConst.DirtyChampion, ChapterConst.DirtyAttachment)

		_.each(slot0.cellUpdates, function (slot0)
			if isa(slot0, ChapterChampionPackage) then
				slot1 = uv0:mergeChampion(slot0)
			else
				uv0:mergeChapterCell(slot0)

				uv1 = bit.bor(uv1, ChapterConst.DirtyAttachment)
			end
		end)
	end

	return true, slot4, slot5
end

return slot0
