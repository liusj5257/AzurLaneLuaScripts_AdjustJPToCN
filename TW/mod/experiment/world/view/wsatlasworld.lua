slot0 = class("WSAtlasWorld", import(".WSAtlas"))
slot0.Fields = {
	isDragging = "boolean",
	tfAreaScene = "userdata",
	wsTimer = "table",
	tfMapModel = "userdata",
	nowArea = "number",
	dragTrigger = "userdata",
	tfModel = "userdata",
	twRotateId = "number",
	isTransAnim = "boolean",
	areaLockPressingAward = "table",
	entranceTplDic = "table",
	twFocusIds = "table"
}
slot0.Listeners = {
	onUpdatePressingAward = "OnUpdatePressingAward",
	onUpdatePortMark = "OnUpdatePortMark",
	onUpdateActiveEntrance = "OnUpdateActiveEntrance",
	onUpdateProgress = "OnUpdateProgress"
}
slot0.EventUpdateselectEntrance = "WSAtlasWorld.EventUpdateselectEntrance"
slot0.baseDistance = -217.4
slot0.frontDistance = -101.6237
slot0.basePoint = Vector2(1024, 550)
slot0.baseMoveDistance = 100
slot0.baseDuration = 0.8
slot0.selectOffsetPos = Vector2(107, 61)

slot0.Dispose = function(slot0)
	slot0:DisposeEntranceTplDic()
	uv0.super.Dispose(slot0)
end

slot0.Init = function(slot0)
	uv0.super.Init(slot0)

	slot0.entranceTplDic = {}
	slot0.twFocusIds = {}
	slot0.areaLockPressingAward = {}
end

slot0.UpdateAtlas = function(slot0, slot1)
	if slot0.atlas ~= slot1 then
		slot0:RemoveAtlasListener()
		slot0:DisposeEntranceTplDic()

		slot0.atlas = slot1

		slot0:AddAtlasListener()
		slot0:NewEntranceTplDic()
		slot0:UpdateModelMask()
		slot0:OnUpdateActiveEntrance(nil, , slot0.atlas:GetActiveEntrance())
		slot0:OnUpdatePressingAward()
	end
end

slot0.AddAtlasListener = function(slot0)
	if slot0.atlas then
		slot0.atlas:AddListener(WorldAtlas.EventUpdatePortMark, slot0.onUpdatePortMark)
	end

	uv0.super.AddAtlasListener(slot0)
end

slot0.RemoveAtlasListener = function(slot0)
	if slot0.atlas then
		slot0.atlas:RemoveListener(WorldAtlas.EventUpdatePortMark, slot0.onUpdatePortMark)
	end

	uv0.super.RemoveAtlasListener(slot0)
end

slot0.LoadModel = function(slot0, slot1)
	slot2 = {}

	if not slot0.tfModel then
		table.insert(slot2, function (slot0)
			slot1 = PoolMgr.GetInstance()

			slot1:GetPrefab("model/worldmapmodel", "WorldMapModel", true, function (slot0)
				if uv0.transform then
					uv0.tfModel = tf(slot0)

					setParent(uv0.tfModel, uv0.tfMapModel, false)
				else
					uv1:ReturnPrefab("model/worldmapmodel", "WorldMapModel", slot0, true)
				end

				return uv2()
			end)
		end)
	end

	seriesAsync(slot2, function ()
		return existCall(uv0)
	end)
end

slot0.ReturnModel = function(slot0)
	if slot0.tfModel then
		PoolMgr.GetInstance():ReturnPrefab("model/worldmapmodel", "WorldMapModel", go(slot0.tfModel), true)
	end
end

slot0.LoadScene = function(slot0, slot1)
	gcAll(true)

	slot2 = SceneOpMgr.Inst

	slot2:LoadSceneAsync("scenes/worldmap3d", "WorldMap3D", LoadSceneMode.Additive, function (slot0, slot1)
		uv0.transform = tf(slot0:GetRootGameObjects()[0])

		setActive(uv0.transform, false)

		slot3 = uv0.transform
		uv0.tfEntity = slot3:Find("entity")
		slot3 = uv0.tfEntity
		uv0.tfAreaScene = slot3:Find("area_scene")
		slot3 = uv0.tfEntity
		uv0.tfMapScene = slot3:Find("map_scene")
		slot3 = uv0.tfEntity
		uv0.tfMapModel = slot3:Find("model")
		slot3 = uv0.tfMapScene
		uv0.tfMapSelect = slot3:Find("selected_layer")
		slot3 = uv0.tfEntity
		uv0.tfSpriteScene = slot3:Find("sprite_scene")
		slot3 = uv0.transform
		uv0.tfCamera = slot3:Find("Main Camera")
		slot2 = uv0.tfCamera
		slot2:GetComponent("Camera").depthTextureMode = UnityEngine.DepthTextureMode.Depth
		slot3 = uv0.tfEntity
		slot3 = slot3:Find("decolation_layer/edge")
		uv0.defaultSprite = slot3:GetComponent("SpriteRenderer").material
		slot3 = uv0.tfEntity
		slot3 = slot3:Find("map_scene/mask_layer")
		uv0.addSprite = slot3:GetComponent("SpriteRenderer").material
		slot2 = math.deg2Rad * 30
		slot3 = uv0.frontDistance / UnityEngine.Screen.height
		slot5 = uv0.tfEntity
		slot5 = slot5:Find("Plane")
		uv0.dragTrigger = slot5:GetComponent("EventTriggerListener")
		slot4 = uv0.dragTrigger

		slot4:AddDragFunc(function (slot0, slot1)
			uv0.isDragging = true

			if not uv0.nowArea or uv0:CheckIsTweening() then
				return
			end

			if uv0.selectEntrance then
				uv0:UpdateSelect()
			end

			uv0.tfCamera.localPosition = uv0.tfCamera.localPosition + Vector3(slot1.delta.x, 0, slot1.delta.y / math.cos(uv1)) * uv2
		end)

		slot4 = uv0.dragTrigger

		slot4:AddDragEndFunc(function (slot0, slot1)
			uv0.isDragging = false
		end)

		slot4 = uv0

		slot4:UpdateCenterEffectDisplay()

		slot4 = uv0

		slot4:BuildActiveMark()

		slot4 = nowWorld()
		slot6 = uv0.tfEntity
		slot6 = slot6:Find("Plane")
		uv0.cmPointer = slot6:GetComponent(typeof(PointerInfo))
		slot5 = uv0.cmPointer

		slot5:AddColorMaskClickListener(function (slot0, slot1)
			if uv0.isDragging then
				return
			end

			if uv1:ColorToEntrance(slot0) then
				uv0.onClickColor(slot2, slot1.position)
			end
		end)

		return existCall(uv1)
	end)
end

slot0.ReturnScene = function(slot0)
	slot0:ReturnModel()

	if slot0.transform then
		slot1 = slot0.tfMapScene:GetComponent("FMultiSpriteRenderCtrl")
		slot1.alpha = 1

		slot1:UpdateAlpha()

		slot2 = slot0.tfAreaScene:GetComponent("FMultiSpriteRenderCtrl")
		slot2.alpha = 1

		slot2:UpdateAlpha()
		SceneOpMgr.Inst:UnloadSceneAsync("scene/worldmap3d", "WorldMap3D")

		slot0.cmPointer = nil
	end
end

slot0.ShowOrHide = function(slot0, slot1)
	uv0.super.ShowOrHide(slot0, slot1)

	if slot1 then
		SceneManager.SetActiveScene(SceneManager.GetSceneByName("WorldMap3D"))
	else
		SceneManager.SetActiveScene(SceneManager.GetSceneByName("main"))
	end
end

slot0.GetOffsetMapPos = function(slot0)
	slot1 = uv0.selectOffsetPos
	slot3 = math.rad(-slot0.tfEntity.localEulerAngles.y)

	return Vector2(slot1.x * math.cos(slot3) - slot1.y * math.sin(slot3), slot1.y * math.cos(slot3) + slot1.x * math.sin(slot3))
end

slot0.UpdateSelect = function(slot0, slot1, slot2, slot3)
	if slot1 then
		slot0.nowArea = slot1:GetAreaId()

		slot0:FocusPos(Vector2(slot1.config.area_pos[1], slot1.config.area_pos[2]) + slot0:GetOffsetMapPos(), nil, 1, true, function ()
			uv0.super.UpdateSelect(uv1, uv2)
			uv1:DispatchEvent(uv0.EventUpdateselectEntrance, uv2, uv3, uv4)
		end)
	else
		uv0.super.UpdateSelect(slot0, slot1)
		slot0:DispatchEvent(uv0.EventUpdateselectEntrance, slot1, slot2, slot3)
	end
end

slot0.UpdateModelMask = function(slot0)
	uv0.super.UpdateModelMask(slot0)
	slot0:UpdateAreaLock()
end

slot0.UpdateEntranceMask = function(slot0, slot1)
	slot2 = slot0.entranceTplDic[slot1.id]

	if slot1:HasPort() then
		slot2:UpdatePort(slot0.atlas:GetEntrancePortInfo(slot1.id))
	end

	uv0.super.UpdateEntranceMask(slot0, slot1)
end

slot0.OnUpdateProgress = function(slot0, slot1, slot2, slot3)
	uv0.super.OnUpdateProgress(slot0, slot1, slot2, slot3)
	slot0:UpdateAreaLock()
end

slot0.UpdateAreaLock = function(slot0)
	for slot4 = 1, 5 do
		slot5 = nowWorld():CheckAreaUnlock(slot4)

		setActive(slot0.tfAreaScene:Find("lock_layer/" .. slot4), not slot5)
		setActive(slot0.tfMapScene:Find("mask_layer/" .. slot4), slot5)

		if slot5 and slot0.areaLockPressingAward[slot4] then
			for slot9, slot10 in ipairs(slot0.areaLockPressingAward[slot4]) do
				slot0.entranceTplDic[slot10]:UpdatePressingAward()
			end

			slot0.areaLockPressingAward[slot4] = nil
		end
	end
end

slot0.OnUpdateActiveEntrance = function(slot0, slot1, slot2, slot3)
	uv0.super.OnUpdateActiveEntrance(slot0, slot1, slot2, slot3)

	if slot3 then
		slot4 = slot3:HasPort()

		slot0:DoUpdatExtraMark(slot0.tfActiveMark, "mark_active_1", not slot4)
		slot0:DoUpdatExtraMark(slot0.tfActiveMark, "mark_active_port", slot4)
	end

	slot4 = slot3 and slot3:GetAreaId()

	for slot8 = 1, 5 do
		setActive(slot0.tfAreaScene:Find("selected_layer/B" .. slot8 .. "_2"), slot8 == slot4)
		setActive(slot0.tfAreaScene:Find("base_layer/B" .. slot8), slot8 ~= slot4)
	end
end

slot0.OnUpdatePressingAward = function(slot0, slot1, slot2, slot3)
	slot3 = slot3 or slot0.atlas.transportDic

	for slot7, slot8 in pairs(slot3) do
		if slot8 then
			if nowWorld():CheckAreaUnlock(slot0.atlas:GetEntrance(slot7):GetAreaId()) then
				slot0.entranceTplDic[slot7]:UpdatePressingAward()
			else
				slot0.areaLockPressingAward[slot9] = slot0.areaLockPressingAward[slot9] or {}

				table.insert(slot0.areaLockPressingAward[slot9], slot7)
			end
		end
	end

	uv0.super.OnUpdatePressingAward(slot0, slot1, slot2, slot3)
end

slot0.OnUpdatePortMark = function(slot0, slot1, slot2, slot3)
	for slot7, slot8 in pairs(slot3) do
		if slot8 then
			slot0.entranceTplDic[slot7]:UpdatePort(slot0.atlas:GetEntrancePortInfo(slot7))
		end
	end
end

slot0.NewEntranceTplDic = function(slot0)
	for slot4, slot5 in pairs(slot0.atlas.entranceDic) do
		slot0.entranceTplDic[slot5.id] = slot0:NewEntranceTpl(slot5)
	end
end

slot0.DisposeEntranceTplDic = function(slot0)
	WPool:ReturnArray(_.values(slot0.entranceTplDic))

	slot0.entranceTplDic = {}
end

slot0.NewEntranceTpl = function(slot0, slot1)
	slot2 = WPool:Get(WSEntranceTpl)

	slot2.transform:SetParent(slot0.tfSpriteScene, false)

	slot2.transform.localPosition = WorldConst.CalcModelPosition(slot1, slot0.spriteBaseSize)
	slot2.tfArea = slot0.tfAreaScene:Find("display_layer")
	slot2.tfMap = slot0.tfMapScene:Find("display_layer")

	slot2:Setup()
	slot2:UpdateEntrance(slot1)

	return slot2
end

slot0.FindEntranceTpl = function(slot0, slot1)
	return slot0.entranceTplDic[slot1.id]
end

slot0.UpdateScale = function(slot0, slot1)
	slot1 = slot1 or 0
	slot2 = slot0.tfCamera.localEulerAngles.x / 180 * math.pi
	slot4 = uv0.baseDistance * (1 - slot1) + slot0.frontDistance * slot1 - slot0.tfCamera.localPosition.y / -math.sin(slot2)
	slot0.tfCamera.localPosition = slot0.tfCamera.localPosition + Vector3(0, -math.sin(slot2) * slot4, math.cos(slot2) * slot4)
end

slot0.FocusPos = function(slot0, slot1, slot2, slot3, slot4, slot5)
	if slot0.twRotateId then
		LeanTween.cancel(slot0.twRotateId)

		slot0.twRotateId = nil
	end

	slot3 = slot3 or 0
	slot2 = 0

	if not slot1 then
		slot6 = math.rad(-slot2)
		slot1 = uv0.basePoint - uv0.spriteBaseSize / 2
		slot1 = Vector2(slot1.x * math.cos(slot6) - slot1.y * math.sin(slot6), slot1.y * math.cos(slot6) + slot1.x * math.sin(slot6)) + uv0.spriteBaseSize / 2
	end

	slot6 = math.rad(slot0.tfEntity.localEulerAngles.y - slot2)
	slot1 = slot1 - uv0.spriteBaseSize / 2
	slot1 = Vector2(slot1.x * math.cos(slot6) - slot1.y * math.sin(slot6), slot1.y * math.cos(slot6) + slot1.x * math.sin(slot6))
	slot8 = slot0.transform:InverseTransformPoint(slot0.tfSpriteScene:TransformPoint(Vector3(slot1.x, 0, slot1.y) / PIXEL_PER_UNIT))
	slot9 = math.rad(slot0.tfCamera.localEulerAngles.x)
	slot10 = slot8 - Vector3(0, slot8.y, slot8.y / -math.tan(slot9)) + Vector3(0, slot0.tfCamera.localPosition.y, slot0.tfCamera.localPosition.y / -math.tan(slot9))
	slot12 = uv0.baseDistance * (1 - slot3) + uv0.frontDistance * slot3 - slot10.y / -math.sin(slot9)
	slot10 = slot10 + Vector3(0, -math.sin(slot9) * slot12, math.cos(slot9) * slot12)

	if slot4 then
		slot13 = math.min(Vector3.Distance(slot0.tfCamera.localPosition, slot10) / uv0.baseMoveDistance, 1) * uv0.baseDuration
		slot14 = math.min(math.abs(slot2 - slot0.tfEntity.localEulerAngles.y) / 180, 1) * uv0.baseDuration
		slot15 = {}

		table.insert(slot15, function (slot0)
			slot1 = LeanTween.moveLocal(go(uv0.tfCamera), uv1, uv2):setEase(LeanTweenType.easeInOutSine):setOnComplete(System.Action(slot0)).uniqueId

			table.insert(uv0.twFocusIds, slot1)
			uv0.wsTimer:AddTween(slot1)
		end)
		table.insert(slot15, function (slot0)
			slot1 = LeanTween.rotateY(go(uv0.tfEntity), uv1, uv2):setEase(LeanTweenType.easeInOutSine):setOnComplete(System.Action(slot0)).uniqueId

			table.insert(uv0.twFocusIds, slot1)
			uv0.wsTimer:AddTween(slot1)
		end)
		parallelAsync(slot15, function ()
			existCall(uv0)
		end)

		return
	end

	slot0.tfCamera.localPosition = slot10
	slot0.tfEntity.localEulerAngles = Vector3(0, slot2, 0)

	return existCall(slot5)
end

slot0.FocusPosInArea = function(slot0, slot1, slot2, slot3)
	if slot1 then
		slot4 = pg.world_regions_data[slot1]

		slot0:FocusPos(Vector2(slot4.regions_pos[1], slot4.regions_pos[2]), slot4.regions_rotation[1], 1, slot2, slot3)
	else
		slot0:FocusPos(uv0.basePoint, 0, 0, slot2, slot3)
	end
end

slot0.SwitchArea = function(slot0, slot1, slot2, slot3)
	slot4 = {}

	if slot2 and tobool(slot1) ~= tobool(slot0.nowArea) then
		table.insert(slot4, function (slot0)
			uv0:SwitchMode(uv1, uv2, slot0)
		end)
	end

	table.insert(slot4, function (slot0)
		setActive(uv0.tfAreaScene, not uv1)
		setActive(uv0.tfMapScene, uv1)
		setActive(uv0.tfMapModel, not uv1)
		slot0()
	end)

	slot0.nowArea = slot1

	parallelAsync({
		function (slot0)
			seriesAsync(uv0, slot0)
		end,
		function (slot0)
			uv0:FocusPosInArea(uv1, uv2, slot0)
		end
	}, function ()
		return existCall(uv0)
	end)
end

slot0.SwitchMode = function(slot0, slot1, slot2, slot3)
	slot4 = function(slot0)
		setActive(uv0.tfAreaScene, true)
		uv0.tfAreaScene:GetComponent("FMultiSpriteRenderCtrl"):Init()

		slot1.alpha = uv1 and 1 or 0

		slot1:UpdateAlpha()

		slot2 = LeanTween.value(go(uv0.tfAreaScene), uv1 and 1 or 0, uv1 and 0 or 1, uv2.baseDuration):setOnUpdate(System.Action_float(function (slot0)
			uv0.alpha = slot0
		end)):setOnComplete(System.Action(function ()
			uv0.alpha = 1

			uv0:UpdateAlpha()
			setActive(uv1.tfAreaScene, not uv2)

			return uv3()
		end)).uniqueId

		table.insert(uv0.twFocusIds, slot2)
		uv0.wsTimer:AddTween(slot2)
	end

	slot5 = function(slot0)
		setActive(uv0.tfMapScene, true)
		uv0.tfMapScene:GetComponent("FMultiSpriteRenderCtrl"):Init()

		slot1.alpha = uv1 and 0 or 1

		slot1:UpdateAlpha()

		slot2 = LeanTween.value(go(uv0.tfMapScene), uv1 and 0 or 1, uv1 and 1 or 0, uv2.baseDuration):setOnUpdate(System.Action_float(function (slot0)
			uv0.alpha = slot0
		end)):setOnComplete(System.Action(function ()
			uv0.alpha = 1

			uv0:UpdateAlpha()
			setActive(uv1.tfMapScene, uv2)

			return uv3()
		end)).uniqueId

		table.insert(uv0.twFocusIds, slot2)
		uv0.wsTimer:AddTween(slot2)
	end

	slot6 = function(slot0)
		setActive(uv0.tfMapModel, true)

		slot1 = {}
		slot2 = uv1.baseDuration

		table.insert(slot1, function (slot0)
			slot2 = uv0.tfModel:Find("Terrain_LOD9_perfect"):GetComponent("MeshRenderer").material

			slot2:SetFloat("_Invisible", uv1 and 1 or 0)

			slot3 = LeanTween.value(go(slot1), uv1 and 1 or 0, uv1 and 0 or 1, uv2):setOnUpdate(System.Action_float(function (slot0)
				uv0:SetFloat("_Invisible", slot0)
			end)):setOnComplete(System.Action(function ()
				uv0:SetFloat("_Invisible", uv1 and 0 or 1)
				uv2()
			end)).uniqueId

			table.insert(uv0.twFocusIds, slot3)
			uv0.wsTimer:AddTween(slot3)
		end)
		table.insert(slot1, function (slot0)
			uv0.tfModel:Find("decolation_model"):GetComponent("FMultiSpriteRenderCtrl"):Init()

			slot2.alpha = uv1 and 1 or 0

			slot2:UpdateAlpha()

			slot3 = LeanTween.value(go(slot1), uv1 and 1 or 0, uv1 and 0 or 1, uv2):setOnUpdate(System.Action_float(function (slot0)
				uv0.alpha = slot0
			end)):setOnComplete(System.Action(function ()
				uv0.alpha = 1

				uv0:UpdateAlpha()
				uv1()
			end)).uniqueId

			table.insert(uv0.twFocusIds, slot3)
			uv0.wsTimer:AddTween(slot3)
		end)
		parallelAsync(slot1, function ()
			setActive(uv0.tfMapModel, not uv1)

			return uv2()
		end)
	end

	slot7 = function()
		uv0:BreathRotate(not uv1)

		return existCall(uv2)
	end

	if slot2 then
		parallelAsync({
			slot4,
			slot5,
			slot6
		}, function ()
			return uv0()
		end)
	else
		return slot7()
	end
end

slot0.LowRotation = -5
slot0.HeightRotation = 5
slot0.BreathTime = 18

slot0.BreathRotate = function(slot0, slot1)
	if slot0.twRotateId then
		LeanTween.cancel(slot0.twRotateId)

		slot0.twRotateId = nil
	end

	if not slot1 then
		return
	end

	slot2 = -1

	slot3 = function()
		uv0 = -1 * uv0
		uv1.twRotateId = LeanTween.rotateY(go(uv1.tfEntity), uv0 == 1 and uv2.HeightRotation or uv2.LowRotation, uv2.BreathTime):setEase(LeanTweenType.easeOutSine):setOnComplete(System.Action(function ()
			uv0()
		end)).uniqueId
	end

	slot0.twRotateId = LeanTween.rotateY(go(slot0.tfEntity), uv0.LowRotation, uv0.BreathTime / 2):setEase(LeanTweenType.easeOutSine):setOnComplete(System.Action(function ()
		uv0()
	end)):setDelay(1).uniqueId
end

slot0.CheckIsTweening = function(slot0)
	while #slot0.twFocusIds > 0 and not LeanTween.isTweening(slot0.twFocusIds[1]) do
		table.remove(slot0.twFocusIds, 1)
	end

	return slot0.isTransAnim or #slot0.twFocusIds > 0
end

slot0.ActiveTrans = function(slot0, slot1)
	if not slot0.entranceTplDic[slot1.id].portCamp then
		slot3 = slot0.tfMapSelect
		slot3 = slot3:Find("A" .. slot1:GetColormaskUniqueID() .. "_2")

		setActive(slot3, true)

		slot4 = slot3:GetComponent("SpriteRenderer").color
		slot4.a = 0
		slot3:GetComponent("SpriteRenderer").color = slot4
		slot5 = LeanTween.alpha(go(slot3), 1, 0.3)

		slot5:setOnComplete(System.Action(function ()
			slot0 = LeanTween.alpha(go(uv0), 0, 0.2)
			slot0 = slot0:setDelay(0.1)

			slot0:setOnComplete(System.Action(function ()
				setActive(uv0, uv1.selectEntrance == uv2)

				uv3.a = 1
				uv0:GetComponent("SpriteRenderer").color = uv3
			end))
		end))
	end
end

slot0.DisplayTransport = function(slot0, slot1, slot2)
	slot3 = {}

	for slot7, slot8 in pairs(slot0.atlas.transportDic) do
		if slot8 and not slot1[slot7] then
			slot3[slot7] = true
		end
	end

	slot0:UpdateTransMark(slot3, slot2)
end

slot0.UpdateTransMark = function(slot0, slot1, slot2)
	for slot6, slot7 in pairs(slot1) do
		if slot7 then
			slot0.isTransAnim = true

			slot0:ActiveTrans(slot0.atlas:GetEntrance(slot6))
		end
	end

	if slot0.isTransAnim then
		slot0.wsTimer:AddTimer(function ()
			uv0.isTransAnim = false

			uv1()
		end, 0.6):Start()
	else
		slot2()
	end
end

slot0.UpdateActiveMark = function(slot0)
	slot1 = nowWorld()
	slot1 = slot1:GetActiveMap()
	slot1 = slot1:CkeckTransport()

	eachChild(slot0.tfActiveMark, function (slot0)
		setActive(slot0:Find("base"), uv0)
		setActive(slot0:Find("limit"), not uv0)
	end)
end

return slot0
