slot0 = class("DockyardShipItem")
slot0.DetailType0 = 0
slot0.DetailType1 = 1
slot0.DetailType2 = 2
slot0.DetailType3 = 3
slot0.SKILL_COLOR = {
	COLOR_RED,
	COLOR_BLUE,
	COLOR_YELLOW
}
slot1 = 0.8

slot0.Ctor = function(slot0, slot1, slot2, slot3)
	slot0.go = slot1
	slot0.tr = slot1.transform
	slot0.hideTagFlags = slot2 or {}
	slot0.blockTagFlags = slot3 or {}
	slot0.btn = GetOrAddComponent(slot1, "Button")
	slot0.content = findTF(slot0.tr, "content").gameObject

	setActive(findTF(slot0.content, "dockyard"), true)
	setActive(findTF(slot0.content, "collection"), false)

	slot0.quit = findTF(slot0.tr, "quit_button").gameObject
	slot0.detail = findTF(slot0.tr, "content/dockyard/detail").gameObject
	slot0.detailLayoutTr = findTF(slot0.detail, "layout")
	slot0.imageQuit = slot0.quit:GetComponent("Image")
	slot0.imageFrame = findTF(slot0.tr, "content/front/frame"):GetComponent("Image")
	slot0.nameTF = findTF(slot0.tr, "content/info/name_mask/name")
	slot0.npc = findTF(slot0.tr, "content/dockyard/npc")

	setActive(slot0.npc, false)

	slot0.lock = findTF(slot0.tr, "content/dockyard/container/lock")
	slot0.maskStatusOb = findTF(slot0.tr, "content/front/status_mask")
	slot0.iconStatus = findTF(slot0.tr, "content/dockyard/status")
	slot0.iconStatusMask = slot0.iconStatus:GetComponent(typeof(RectMask2D))
	slot0.iconStatusTxt = findTF(slot0.tr, "content/dockyard/status/Text"):GetComponent("Text")
	slot0.selectedGo = findTF(slot0.tr, "content/front/selected").gameObject
	slot0.energyTF = findTF(slot0.tr, "content/dockyard/container/energy")
	slot0.proposeTF = findTF(slot0.tr, "content/dockyard/propose")

	slot0.selectedGo:SetActive(false)

	slot0.hpBar = findTF(slot0.tr, "content/dockyard/blood")
	slot0.expBuff = findTF(slot0.tr, "content/expbuff")
	slot0.intimacyTF = findTF(slot0.tr, "content/intimacy")
	slot0.detailType = uv0.DetailType0
	slot0.proposeModel = slot0.proposeTF:Find("heartShipCard(Clone)")

	if slot0.proposeModel then
		slot0.sg = GetComponent(slot0.proposeModel, "SkeletonGraphic")
	end

	slot0.activityProxy = getProxy(ActivityProxy)
	slot0.userTF = findTF(slot0.tr, "content/user")

	if slot0.userTF then
		slot0.userIconTF = slot0.userTF:Find("icon"):GetComponent(typeof(Image))
		slot0.userIconFrame = slot0.userTF:Find("frame")
		slot0.userNameTF = findTF(slot0.tr, "content/user_name/Text"):GetComponent(typeof(Text))
		slot0.levelTF = findTF(slot0.tr, "content/dockyard/lv")
	end

	slot0.tagRecommand = findTF(slot0.tr, "content/recommand")
	slot0.palyerId = getProxy(PlayerProxy):getRawData().id

	ClearTweenItemAlphaAndWhite(slot0.go)

	slot0.isClear = true
end

slot0.update = function(slot0, slot1)
	slot0.isClear = false

	TweenItemAlphaAndWhite(slot0.go)

	if slot0.proposeModel then
		LeanTween.cancel(slot0.proposeModel)

		slot2 = LeanTween.value(go(slot0.proposeModel), 0, 1, 0.4)

		slot2:setOnUpdate(System.Action_float(function (slot0)
			uv0.sg.color = Color.New(1, 1, 1, slot0)
		end))
	end

	if slot1 then
		slot0.go.name = slot1.configId
	end

	if slot0.shipVO ~= slot1 then
		slot0.shipVO = slot1

		slot0:flush()
		slot0:flushDetail()
	end

	setActive(slot0.nameTF, false)
	setActive(slot0.nameTF, true)

	if not IsNil(slot0.levelTF) then
		setActive(slot0.levelTF, false)
		setActive(slot0.levelTF, true)
	end
end

slot0.updateDetail = function(slot0, slot1)
	slot0.detailType = slot1

	slot0:flushDetail()
end

slot0.updateSelected = function(slot0, slot1)
	slot0.selected = slot1

	slot0.selectedGo:SetActive(slot0.selected)

	if slot0.selected then
		if not slot0.selectedTwId then
			slot0.selectedTwId = LeanTween.alpha(slot0.selectedGo.transform, 0.5, uv0):setFrom(0):setEase(LeanTweenType.easeInOutSine):setLoopPingPong().uniqueId
		end
	elseif slot0.selectedTwId then
		LeanTween.cancel(slot0.selectedTwId)

		slot0.selectedTwId = nil
	end
end

slot0.flush = function(slot0)
	if tobool(slot0.shipVO) then
		if not slot1:getConfigTable() then
			return
		end

		flushShipCard(slot0.tr, slot1)
		setActive(slot0.npc, slot1:isActivityNpc())

		if slot0.lock then
			slot0.lock.gameObject:SetActive(slot1:GetLockState() == Ship.LOCK_STATE_LOCK)
		end

		if slot1.energy <= Ship.ENERGY_MID then
			if not GetSpriteFromAtlas("energy", slot1:getEnergyPrint()) then
				warning("找不到疲劳")
			end

			setImageSprite(slot0.energyTF, slot6)
		end

		setActive(slot0.energyTF, slot5)
		setText(slot0.nameTF, slot1:GetColorName(shortenString(slot1:getName(), PLATFORM_CODE == PLATFORM_US and 6 or 7)))

		slot6 = nil

		if slot1.user then
			slot7 = Clone(slot1)
			slot7.id = GuildAssaultFleet.GetRealId(slot7.id)
			slot6 = ShipStatus.ShipStatusToTag(slot7, slot0.hideTagFlags)
		else
			slot6 = ShipStatus.ShipStatusToTag(slot1, slot0.hideTagFlags)
		end

		if slot6 then
			slot0.iconStatusTxt.text = slot6[3]

			GetSpriteFromAtlasAsync(slot6[1], slot6[2], function (slot0)
				setImageSprite(uv0.iconStatus, slot0, true)
				setActive(uv0.iconStatus, true)

				if uv1[1] == "shipstatus" then
					uv0.iconStatus.sizeDelta = Vector2(195, 36)
					uv0.iconStatusTxt.fontSize = 30
					uv0.iconStatusTxt.transform.sizeDelta = Vector2(195, 36)
				end

				uv0.iconStatusMask.enabled = false
			end)
		else
			setActive(slot0.iconStatus, false)
		end

		if not LOCK_PROPOSE then
			if slot0.proposeModel then
				slot0.sg.enabled = slot0:CheckHeartState()
			elseif slot0:CheckHeartState() and not slot0.heartLoading then
				slot0.heartLoading = true
				slot7 = pg.PoolMgr.GetInstance()

				slot7:GetUI("heartShipCard", false, function (slot0)
					if uv0.isClear or uv0.proposeModel then
						pg.PoolMgr.GetInstance():ReturnUI("heartShipCard", slot0)
					else
						uv0.proposeModel = slot0
						uv0.sg = GetComponent(uv0.proposeModel, "SkeletonGraphic")

						uv0.proposeModel.transform:SetParent(uv0.proposeTF, false)

						uv0.sg.enabled = uv0:CheckHeartState()
						uv0.heartLoading = false
					end
				end)
			end
		end

		if slot0.hpBar then
			setActive(slot0.hpBar, false)
		end

		slot0:UpdateExpBuff()
		slot0:updateNpcTfPosY()
	end

	if slot0.userTF then
		slot0:UpdateUser(slot1)
	end

	slot0.content:SetActive(slot2)
	slot0.quit:SetActive(not slot2)

	slot0.btn.targetGraphic = slot2 and slot0.imageFrame or slot0.imageQuit
end

slot0.CheckHeartState = function(slot0)
	if tobool(slot0.shipVO) then
		slot2, slot3 = slot0.shipVO:getIntimacyIcon()

		return slot3 and not slot0.shipVO:isActivityNpc()
	end

	return false
end

slot2 = {
	90,
	60,
	30
}

slot0.updateNpcTfPosY = function(slot0)
	if isActive(slot0.npc) then
		slot1 = 1

		if isActive(findTF(slot0.tr, "content/energy")) then
			slot1 = slot1 + 1
		end

		if isActive(slot0.intimacyTF) then
			slot1 = slot1 + 1
		end

		slot3 = slot0.npc.anchoredPosition
		slot3.y = uv0[slot1]
		slot0.npc.anchoredPosition = slot3
	end
end

slot0.UpdateUser = function(slot0, slot1)
	if slot0.userIconFrame.childCount > 0 then
		slot2 = slot0.userIconFrame:GetChild(0).gameObject

		PoolMgr.GetInstance():ReturnPrefab("IconFrame/" .. slot2.name, slot2.name, slot2)
	end

	slot2 = tobool(slot1) and slot1.user
	slot3 = slot2 and slot2.id ~= slot0.palyerId

	setActive(slot0.userTF, slot3 and slot0.detailType == uv0.DetailType0)
	setActive(slot0.userNameTF.gameObject.transform.parent, slot3)

	if slot3 and slot2 ~= slot0.user then
		slot4 = Ship.New({
			configId = slot2.icon
		})

		LoadSpriteAsync("qicon/" .. slot4:getPrefab(), function (slot0)
			uv0.userIconTF.sprite = slot0
		end)

		slot5 = AttireFrame.attireFrameRes(slot2, false, AttireConst.TYPE_ICON_FRAME, slot2.propose)
		slot6 = PoolMgr.GetInstance()

		slot6:GetPrefab("IconFrame/" .. slot5, slot5, true, function (slot0)
			if IsNil(uv0.tr) then
				return
			end

			if uv0.userIconFrame then
				slot0.name = uv1

				setParent(slot0, uv0.userIconFrame, false)
			else
				PoolMgr.GetInstance():ReturnPrefab("IconFrame/" .. uv1, uv1, slot0)
			end
		end)

		slot0.userNameTF.text = slot2.name
		slot0.user = slot2

		setAnchoredPosition(slot0.levelTF, {
			x = -108
		})

		return
	end

	setAnchoredPosition(slot0.levelTF, {
		x = -16
	})
end

slot0.flushDetail = function(slot0)
	if tobool(slot0.shipVO) and uv0.DetailType0 < slot0.detailType then
		slot3 = slot1:getShipProperties()
		slot4 = {
			{
				AttributeType.Durability,
				AttributeType.Cannon,
				AttributeType.Torpedo,
				AttributeType.Air,
				AttributeType.Reload,
				AttributeType.Intimacy
			},
			{
				AttributeType.ArmorType,
				AttributeType.AntiAircraft,
				AttributeType.Dodge,
				AttributeType.AntiSub,
				AttributeType.Expend
			},
			{}
		}
		slot5 = slot1:getShipCombatPower()
		slot6, slot7 = nil

		if slot0.detailType == uv0.DetailType3 then
			slot6 = slot1:getDisplaySkillIds()
			slot7 = pg.skill_data_template
		end

		for slot11 = 1, 6 do
			slot12 = slot0.detailLayoutTr:GetChild(slot11 - 1)
			slot13 = true
			slot12:GetChild(0):GetComponent("Text").alignment = TextAnchor.MiddleLeft
			slot12:GetChild(1):GetComponent("Text").alignment = TextAnchor.MiddleRight
			slot16 = slot4[slot0.detailType][slot11]

			if slot0.detailType == uv0.DetailType1 then
				if slot11 == 6 then
					slot17, slot18 = slot0.shipVO:getIntimacyDetail()
					slot14.text = AttributeType.Type2Name(slot16)
					slot15.text = setColorStr(slot18, slot17 <= slot18 and COLOR_GREEN or COLOR_WHITE)
				else
					slot14.text = AttributeType.Type2Name(slot16)
					slot15.text = setColorStr(tostring(math.floor(slot3[slot16])), slot0:canModAttr(slot1, slot16, slot3) and COLOR_GREEN or COLOR_WHITE)
				end
			elseif slot0.detailType == uv0.DetailType2 then
				if slot11 == 1 then
					slot14.alignment = TextAnchor.MiddleCenter
					slot14.text = slot1:getShipArmorName()
					slot15.text = ""
				elseif slot11 == 5 then
					slot14.text = AttributeType.Type2Name(AttributeType.Expend)
					slot15.text = tostring(math.floor(slot1:getBattleTotalExpend()))
				elseif slot11 == 6 then
					slot14.text = setColorStr(i18n("word_synthesize_power"), COLOR_GREEN)
					slot15.text = tostring(slot5)
				else
					slot14.text = AttributeType.Type2Name(slot16)
					slot15.text = tostring(math.floor(slot3[slot16]))
				end
			elseif slot0.detailType == uv0.DetailType3 then
				if slot6[slot11] and slot1.skills[slot17] and slot7[slot17].max_level ~= 1 then
					slot19 = uv0.SKILL_COLOR[pg.skill_data_template[slot1.skills[slot17].id].type] or COLOR_WHITE
					slot14.alignment = TextAnchor.MiddleLeft
					slot14.text = setColorStr(i18n("skill") .. slot11, slot19)
					slot15.text = setColorStr(slot18.level == slot7[slot17].max_level and "Lv.Max" or "Lv." .. slot18.level, slot19)
				else
					slot13 = false
				end
			end

			setActive(slot12, slot13)
		end
	end

	slot0.detail:SetActive(slot2 and uv0.DetailType0 < slot0.detailType)

	if slot0.userTF then
		slot0:UpdateUser(slot1)
	end

	slot0:UpdateRecommandTag(slot1)
end

slot0.UpdateRecommandTag = function(slot0, slot1)
	if slot1 and slot0.tagRecommand then
		setActive(slot0.tagRecommand, defaultValue(slot1.guildRecommand, false))
	end
end

slot0.canModAttr = function(slot0, slot1, slot2, slot3)
	if slot1:isBluePrintShip() then
		return slot1:getBluePrint():isMaxIntensifyLevel()
	elseif slot1:isMetaShip() then
		return slot1:getMetaCharacter():isMaxRepairExp()
	elseif not ShipModAttr.ATTR_TO_INDEX[slot2] then
		return true
	elseif slot1:getModAttrTopLimit(slot2) == 0 then
		return true
	else
		slot4 = slot1.level >= 100 or slot1.level == slot1:getMaxLevel()

		return slot4 and slot1:getModAttrBaseMax(slot2) <= slot3[slot2]
	end
end

slot0.updateBlackBlock = function(slot0, slot1)
	slot2 = false

	if slot0.shipVO then
		for slot6, slot7 in pairs(slot0.blockTagFlags) do
			if slot7 and slot0.shipVO:getFlag(slot6) then
				slot2 = true

				break
			end
		end

		if not slot2 and slot1 then
			slot3 = getProxy(BayProxy)

			for slot7, slot8 in ipairs(slot1) do
				if slot3:getShipById(slot8) and slot0.shipVO:isSameKind(slot9) then
					slot2 = slot9.id ~= slot0.shipVO.id

					break
				end
			end
		end
	end

	if slot0.maskStatusOb then
		setActive(slot0.maskStatusOb, slot2)
	end
end

slot0.updateWorld = function(slot0)
	if slot0.shipVO:getFlag("inWorld") then
		slot2 = WorldConst.FetchWorldShip(slot1.id)

		setActive(slot0.hpBar, true)
		setActive(slot0.hpBar:Find("fillarea/green"), slot2:IsHpSafe())
		setActive(slot0.hpBar:Find("fillarea/red"), not slot2:IsHpSafe())

		slot0.hpBar:GetComponent(typeof(Slider)).fillRect = slot2:IsHpSafe() and slot3 or slot4

		setSlider(slot0.hpBar, 0, 10000, slot2.hpRant)
		setActive(slot0.hpBar:Find("broken"), slot2:IsBroken())

		if slot0.maskStatusOb then
			setActive(slot0.maskStatusOb, not slot2:IsAlive())
		end
	end
end

slot0.UpdateExpBuff = function(slot0)
	setActive(slot0.expBuff, false)
	setActive(slot0.expBuff, slot0.activityProxy:getBuffShipList()[slot0.shipVO:getGroupId()] ~= nil)

	if slot3 then
		slot6 = tostring(slot3 / 100)

		if slot3 % 100 > 0 then
			slot6 = slot6 .. "." .. tostring(slot5)
		end

		setText(slot0.expBuff:Find("text"), string.format("EXP +%s%%", slot6))
	end
end

slot0.clear = function(slot0)
	ClearTweenItemAlphaAndWhite(slot0.go)

	if slot0.selectedTwId then
		LeanTween.cancel(slot0.selectedTwId)

		slot0.selectedTwId = nil
	end

	slot0.isClear = true
end

slot0.updateIntimacy = function(slot0, slot1)
	if not slot0.shipVO then
		return
	end

	if isActive(findTF(slot0.tr, "content/energy")) then
		slot0.intimacyTF = findTF(slot0.tr, "content/intimacy_with_energy")

		setActive(findTF(slot0.tr, "content/intimacy"), false)
	else
		slot0.intimacyTF = findTF(slot0.tr, "content/intimacy")

		setActive(findTF(slot0.tr, "content/intimacy_with_energy"), false)
	end

	slot4, slot5 = slot2:getIntimacyDetail()

	setText(findTF(slot0.intimacyTF, "Text"), slot5)

	if slot5 == 100 or slot5 == 200 then
		setText(findTF(slot0.intimacyTF, "Text"), setColorStr(slot5, "#ff8d8d"))
	end

	setActive(slot0.intimacyTF, slot1)
	slot0:updateNpcTfPosY()
end

slot0.updateIntimacyEnergy = function(slot0, slot1)
	slot2 = slot0.tr:Find("content/energy")

	setActive(slot0.tr:Find("content/energy"), slot0.shipVO and slot1)

	if slot1 and tobool(slot3) then
		setImageSprite(slot2:Find("icon/img"), GetSpriteFromAtlas("energy", slot3:getEnergyPrint()), true)
		setText(slot2:Find("Text"), slot3:getEnergy())
		setActive(slot2:Find("Text"), false)
		setActive(slot2:Find("Text"), true)
	end
end

return slot0
