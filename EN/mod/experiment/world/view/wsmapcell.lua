slot0 = class("WSMapCell", import("...BaseEntity"))
slot0.Fields = {
	cell = "table",
	map = "table",
	rtFog = "userdata",
	transform = "userdata",
	wsMapResource = "table",
	rtAttachments = "userdata",
	maskTimer = "table",
	maskUid = "number",
	wsTimer = "table",
	fogTimer = "table",
	fogUid = "number",
	rtMask = "userdata"
}
slot0.Listeners = {
	onUpdate = "Update",
	onUpdateFogImage = "UpdateFogImage"
}

slot0.GetResName = function()
	return "world_cell"
end

slot0.GetName = function(slot0, slot1)
	return "cell_" .. slot0 .. "_" .. slot1
end

slot0.Setup = function(slot0, slot1, slot2)
	assert(slot0.cell == nil)

	slot0.map = slot1
	slot0.cell = slot2

	slot0.cell:AddListener(WorldMapCell.EventUpdateInFov, slot0.onUpdate)
	slot0.cell:AddListener(WorldMapCell.EventUpdateDiscovered, slot0.onUpdate)
	slot0.cell:AddListener(WorldMapCell.EventUpdateFog, slot0.onUpdate)
	slot0.cell:AddListener(WorldMapCell.EventUpdateFogImage, slot0.onUpdateFogImage)
	slot0:Init()
end

slot0.Dispose = function(slot0)
	if slot0.fogTimer then
		slot0.wsTimer:RemoveInMapTimer(slot0.fogTimer)

		slot0.fogTimer = nil
	end

	if slot0.fogUid then
		slot0.wsTimer:RemoveInMapTween(slot0.fogUid)

		slot0.fogUid = nil
	end

	if slot0.maskTimer then
		slot0.wsTimer:RemoveInMapTimer(slot0.maskTimer)

		slot0.maskTimer = nil
	end

	if slot0.maskUid then
		slot0.wsTimer:RemoveInMapTween(slot0.maskUid)

		slot0.maskUid = nil
	end

	clearImageSprite(slot0.rtFog:Find("dark_fog"))
	clearImageSprite(slot0.rtFog:Find("sairen_fog"))
	setCanvasGroupAlpha(slot0.rtFog, 1)
	slot0.cell:RemoveListener(WorldMapCell.EventUpdateInFov, slot0.onUpdate)
	slot0.cell:RemoveListener(WorldMapCell.EventUpdateDiscovered, slot0.onUpdate)
	slot0.cell:RemoveListener(WorldMapCell.EventUpdateFog, slot0.onUpdate)
	slot0.cell:RemoveListener(WorldMapCell.EventUpdateFogImage, slot0.onUpdateFogImage)
	slot0:Clear()
end

slot1 = function(slot0, slot1, slot2, slot3)
	slot0.anchoredPosition = slot1.anchoredPosition + Vector2((slot2.column % 3 - 1) * -slot3.x, (slot2.row % 3 - 1) * slot3.y)
	slot0.localScale = slot1.localScale

	setImageSprite(slot0, getImageSprite(slot1), true)
end

slot0.Init = function(slot0)
	slot1 = slot0.map.theme
	slot2 = slot0.cell
	slot3 = slot0.transform
	slot3.name = uv0.GetName(slot2.row, slot2.column)
	slot3.anchoredPosition = slot1:GetLinePosition(slot2.row, slot2.column)
	slot3.sizeDelta = slot1.cellSize
	slot0.rtAttachments = slot3:Find("attachments")
	slot0.rtAttachments.localEulerAngles = Vector3(-slot1.angle, 0, 0)
	slot0.rtMask = slot3:Find("mask")
	slot0.rtMask.sizeDelta = slot1.cellSize + Vector2(WorldConst.LineCross * 2, WorldConst.LineCross * 2)
	slot0.rtFog = slot3:Find("fog")
	slot4 = slot0.map.theme
	slot5 = slot4.cellSize + slot4.cellSpace

	uv1(slot0.rtFog:Find("dark_fog"), slot0.wsMapResource.rtDarkFog:Find(WorldConst.Pos2FogRes(slot2.row, slot2.column)), slot2, slot5)
	uv1(slot0.rtFog:Find("sairen_fog"), slot0.wsMapResource.rtSairenFog:Find(WorldConst.Pos2FogRes(slot2.row, slot2.column)), slot2, slot5)
	slot0:Update()
	slot0:UpdateFogImage()
end

slot0.Update = function(slot0, slot1)
	slot2 = slot0.cell
	slot4 = 0
	slot5 = 0
	slot6 = 0

	if slot0.map.centerCellFOV then
		slot5 = math.sqrt((slot3.row - slot2.row) * (slot3.row - slot2.row) + (slot3.column - slot2.column) * (slot3.column - slot2.column)) * 0.1
		slot6 = 0.2
	end

	if slot1 == nil or slot1 == WorldMapCell.EventUpdateInFov or slot1 == WorldMapCell.EventUpdateFog then
		setActive(slot0.rtAttachments, slot2:GetInFOV() and not slot2:InFog())
	end

	if slot1 == nil or slot1 == WorldMapCell.EventUpdateFog then
		if slot0.fogTimer then
			slot0.wsTimer:RemoveInMapTimer(slot0.fogTimer)

			slot0.fogTimer = nil
		end

		if slot0.fogUid then
			slot0.wsTimer:RemoveInMapTween(slot0.fogUid)

			slot0.fogUid = nil
		end

		if slot2:InFog() then
			if slot1 and slot5 > 0 then
				setCanvasGroupAlpha(slot0.rtFog, 0)

				slot0.fogTimer = slot0.wsTimer:AddInMapTimer(function ()
					uv0.fogUid = LeanTween.alphaCanvas(GetComponent(uv0.rtFog, typeof(CanvasGroup)), 1, uv1).uniqueId

					uv0.wsTimer:AddInMapTween(uv0.fogUid)
				end, slot5)

				slot0.fogTimer:Start()
			else
				setCanvasGroupAlpha(slot0.rtFog, 1)
			end
		elseif slot1 and slot5 > 0 then
			slot0.fogTimer = slot0.wsTimer:AddInMapTimer(function ()
				uv0.fogUid = LeanTween.alphaCanvas(GetComponent(uv0.rtFog, typeof(CanvasGroup)), 0, uv1).uniqueId

				uv0.wsTimer:AddInMapTween(uv0.fogUid)
			end, slot5)

			slot0.fogTimer:Start()
		else
			setCanvasGroupAlpha(slot0.rtFog, 0)
		end
	end

	if slot1 == nil or slot1 == WorldMapCell.EventUpdateInFov or slot1 == WorldMapCell.EventUpdateDiscovered then
		if slot0.maskTimer then
			slot0.wsTimer:RemoveInMapTimer(slot0.maskTimer)

			slot0.maskTimer = nil
		end

		if slot0.maskUid then
			slot0.wsTimer:RemoveInMapTween(slot0.maskUid)

			slot0.maskUid = nil
		end

		if slot2:GetInFOV() then
			if slot1 and slot5 > 0 then
				slot0.maskTimer = slot0.wsTimer:AddInMapTimer(function ()
					uv0.maskUid = LeanTween.alpha(uv0.rtMask, 0, uv1).uniqueId

					uv0.wsTimer:AddInMapTween(uv0.maskUid)
				end, slot5)

				slot0.maskTimer:Start()
			else
				setImageAlpha(slot0.rtMask, 0)
			end
		else
			slot7 = slot2.discovered and 0.3 or 0.8

			if slot1 and slot5 > 0 then
				slot0.maskTimer = slot0.wsTimer:AddInMapTimer(function ()
					uv0.maskUid = LeanTween.alpha(uv0.rtMask, uv1, uv2).uniqueId

					uv0.wsTimer:AddInMapTween(uv0.maskUid)
				end, slot5)

				slot0.maskTimer:Start()
			else
				setImageAlpha(slot0.rtMask, slot7)
			end
		end
	end
end

slot0.UpdateFogImage = function(slot0)
	setImageAlpha(slot0.rtFog:Find("dark_fog"), slot0.cell:LookSairenFog() and 0 or 1)
	setImageAlpha(slot0.rtFog:Find("sairen_fog"), slot2 and 1 or 0)
end

slot0.GetWorldPos = function(slot0)
	return slot0.transform.parent:TransformPoint(Vector3.New(slot0.transform.localPosition.x, slot0.transform.localPosition.y, 0))
end

return slot0
