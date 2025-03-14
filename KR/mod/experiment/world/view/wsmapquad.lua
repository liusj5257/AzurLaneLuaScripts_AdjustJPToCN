slot0 = class("WSMapQuad", import("...BaseEntity"))
slot0.Fields = {
	static = "boolean",
	twId = "number",
	rtWalkQuad = "userdata",
	transform = "userdata",
	cell = "table",
	twTimer = "userdata",
	theme = "table",
	rtQuad = "userdata"
}

slot0.GetResName = function()
	return "world_cell_quad"
end

slot0.Listeners = {
	onAddAttachment = "OnAddAttachment",
	onRemoveAttachment = "OnRemoveAttachment",
	onUpdate = "Update",
	onUpdateAttachment = "OnUpdateAttachment"
}

slot0.GetName = function(slot0, slot1)
	return "world_quad_" .. slot0 .. "_" .. slot1
end

slot0.Setup = function(slot0, slot1, slot2)
	slot0.cell = slot1

	slot0.cell:AddListener(WorldMapCell.EventUpdateInFov, slot0.onUpdate)
	slot0.cell:AddListener(WorldMapCell.EventAddAttachment, slot0.onAddAttachment)
	slot0.cell:AddListener(WorldMapCell.EventRemoveAttachment, slot0.onRemoveAttachment)
	slot0.cell:AddListener(WorldMapCell.EventUpdateFog, slot0.onUpdate)
	_.each(slot0.cell.attachments, function (slot0)
		uv0:OnAddAttachment(nil, uv0.cell, slot0)
	end)

	slot0.theme = slot2

	slot0:Init()
end

slot0.Dispose = function(slot0)
	if slot0.twId then
		LeanTween.cancel(slot0.twId)
	end

	slot0.cell:RemoveListener(WorldMapCell.EventUpdateInFov, slot0.onUpdate)
	slot0.cell:RemoveListener(WorldMapCell.EventAddAttachment, slot0.onAddAttachment)
	slot0.cell:RemoveListener(WorldMapCell.EventRemoveAttachment, slot0.onRemoveAttachment)
	slot0.cell:RemoveListener(WorldMapCell.EventUpdateFog, slot0.onUpdate)
	_.each(slot0.cell.attachments, function (slot0)
		uv0:OnRemoveAttachment(nil, uv0.cell, slot0)
	end)
	slot0:Clear()
end

slot0.Init = function(slot0)
	slot1 = slot0.cell
	slot2 = slot0.transform
	slot0.rtQuad = slot2:Find("quad")
	slot2.name = uv0.GetName(slot1.row, slot1.column)
	slot2.anchoredPosition = slot0.theme:GetLinePosition(slot1.row, slot1.column)
	slot0.rtQuad.sizeDelta = slot0.theme.cellSize
	slot0.rtWalkQuad = slot2:Find("walk_quad") or cloneTplTo(slot0.rtQuad, slot2, "walk_quad")

	slot0.rtWalkQuad:SetSiblingIndex(slot0.rtQuad:GetSiblingIndex())
	setImageAlpha(slot0.rtWalkQuad, 0)
	GetImageSpriteFromAtlasAsync("world/cell/base", WorldConst.QuadSpriteWhite, slot0.rtWalkQuad)
	slot0:Update()
end

slot0.Update = function(slot0, slot1)
	slot2 = slot0.cell

	if slot1 == nil or slot1 == WorldMapCell.EventUpdateInFov or slot1 == WorldMapCell.EventUpdateFog then
		slot0:OnUpdateAttachment()
	end
end

slot0.OnAddAttachment = function(slot0, slot1, slot2, slot3)
	slot3:AddListener(WorldMapAttachment.EventUpdateFlag, slot0.onUpdateAttachment)
	slot3:AddListener(WorldMapAttachment.EventUpdateData, slot0.onUpdateAttachment)
	slot3:AddListener(WorldMapAttachment.EventUpdateLurk, slot0.onUpdateAttachment)

	if slot1 then
		slot0:OnUpdateAttachment()
	end
end

slot0.OnRemoveAttachment = function(slot0, slot1, slot2, slot3)
	slot3:RemoveListener(WorldMapAttachment.EventUpdateFlag, slot0.onUpdateAttachment)
	slot3:RemoveListener(WorldMapAttachment.EventUpdateData, slot0.onUpdateAttachment)
	slot3:RemoveListener(WorldMapAttachment.EventUpdateLurk, slot0.onUpdateAttachment)

	if slot1 then
		slot0:OnUpdateAttachment()
	end
end

slot0.UpdateStatic = function(slot0, slot1, slot2)
	if slot0.static ~= slot1 then
		slot0.static = slot1

		if slot2 then
			slot0:UpdateScannerQuad()
		else
			slot0:OnUpdateAttachment()
		end
	end
end

slot0.OnUpdateAttachment = function(slot0)
	if slot0.twId then
		LeanTween.cancel(slot0.twId)

		slot0.twId = nil
	end

	slot1 = slot0.cell:GetDisplayQuad()

	if slot0.cell:GetInFOV() and not slot0.static and slot1 and not slot0.cell:InFog() then
		slot2 = slot1[2] or WorldConst.QuadBlinkDuration
		slot3 = slot1[3] and slot1[3] / 100 or 1
		slot4 = slot1[4] and slot1[4] / 100 or 0

		GetImageSpriteFromAtlasAsync("world/cell/base", slot1[1], slot0.rtQuad)
		setLocalScale(slot0.rtQuad, Vector3.one)

		slot5 = LeanTween.alpha(slot0.rtQuad, slot4, slot2):setFrom(slot3):setEase(LeanTweenType.easeInOutSine):setLoopPingPong()
		slot5.passed = slot0.twTimer.passed
		slot5.direction = slot0.twTimer.direction
		slot0.twId = slot5.uniqueId
		slot6 = slot5.passed / slot2 * (slot3 - slot4) + slot4

		setImageAlpha(slot0.rtQuad, slot5.direction > 0 and slot6 or 1 - slot6)
	else
		setImageAlpha(slot0.rtQuad, 0)
	end
end

slot0.UpdateScannerQuad = function(slot0)
	if slot0.twId then
		LeanTween.cancel(slot0.twId)

		slot0.twId = nil
	end

	if slot0.cell:GetInFOV() and slot0.cell:GetScannerAttachment() then
		setImageAlpha(slot0.rtQuad, 1)
		GetImageSpriteFromAtlasAsync("world/cell/base", "cell_yellow", slot0.rtQuad)
	else
		setImageAlpha(slot0.rtQuad, 0)
	end
end

return slot0
