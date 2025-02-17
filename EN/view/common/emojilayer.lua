slot0 = class("EmojiLayer", import("..base.BaseUI"))
slot0.PageEmojiNums = 8
slot0.Frequently_Used_Emoji_Num = 6
slot0.True_Emoji_Num_Of_Page = 15

slot0.getUIName = function(slot0)
	return "EmojiUI"
end

slot0.init = function(slot0)
	slot0.emojiGroup = slot0:findTF("frame/group")
	slot0.emojiType = slot0:findTF("type", slot0.emojiGroup)
	slot0.emojiEvent = slot0:findTF("frame/bg/mask/event")
	slot0.emojiSnap = slot0:findTF("frame/bg/mask/event"):GetComponent("HScrollSnap")

	slot0.emojiSnap:Init()

	slot0.emojiContent = slot0:findTF("content", slot0.emojiSnap)
	slot0.emojiItem = slot0:findTF("item", slot0.emojiSnap)
	slot0.emojiDots = slot0:findTF("frame/dots")
	slot0.emojiIconDots = slot0:findTF("frame/emojiDots")
	slot0.emojiDot = slot0:findTF("dot", slot0.emojiSnap)

	setText(slot0.emojiEvent:Find("null_tpl/Text"), i18n("recently_sticker_placeholder"))
	setActive(slot0.emojiItem, false)
	setActive(slot0.emojiDot, false)

	slot0.emojiIconEvent = slot0:findTF("frame/bg/mask/emojiicon_event")
	slot0.emojiIconSnap = slot0:findTF("frame/bg/mask/emojiicon_event"):GetComponent("HScrollSnap")

	slot0.emojiIconSnap:Init()

	slot0.emojiIconContent = slot0:findTF("content", slot0.emojiIconSnap)
	slot0.emojiIconItem = slot0:findTF("item_emojiicon", slot0.emojiIconSnap)

	setActive(slot0.emojiIconItem, false)

	slot0.parentTr = slot0._tf.parent
	slot0.resource = slot0:findTF("frame/resource")
	slot0.frame = slot0:findTF("frame")
	slot0.frame.position = slot0.contextData.pos or Vector3(0, 0, 0)
	slot0.frame.localPosition = Vector3(slot0.frame.localPosition.x, slot0.frame.localPosition.y, 0)
	slot0.newTag = slot0:findTF("newtag")
	slot0.emojiProxy = getProxy(EmojiProxy)
end

slot0.didEnter = function(slot0)
	onButton(slot0, slot0._tf, function ()
		uv0:emit(uv1.ON_CLOSE)
	end, SFX_CANCEL)
	slot0:display()

	if getProxy(SettingsProxy):IsMellowStyle() then
		setParent(slot0._tf, pg.UIMgr.GetInstance().OverlayMain)
	else
		pg.UIMgr.GetInstance():BlurPanel(slot0._tf, false, {
			groupName = slot0:getGroupNameFromData(),
			weight = LayerWeightConst.SECOND_LAYER
		})
	end
end

slot0.display = function(slot0)
	slot1 = UIItemList.New(slot0.emojiGroup, slot0.emojiType)

	slot1:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot3 = ChatConst.EmojiTypes[slot1 + 1]

			setText(slot2:Find("Text"), i18n("emoji_type_" .. slot3))

			if uv0.emojiProxy:fliteNewEmojiDataByType()[slot3] then
				setActive(slot2:Find("point"), true)
			else
				setActive(slot2:Find("point"), false)
			end

			onToggle(uv0, slot2, function (slot0)
				if slot0 then
					setActive(uv0.emojiDots, uv1 ~= ChatConst.EmojiIcon)
					setActive(uv0.emojiIconDots, uv1 == ChatConst.EmojiIcon)
					setActive(uv0.emojiEvent, uv1 ~= ChatConst.EmojiIcon)
					setActive(uv0.emojiIconEvent, uv1 == ChatConst.EmojiIcon)

					if uv1 ~= ChatConst.EmojiIcon then
						uv0:filter(uv1)
					elseif uv1 == ChatConst.EmojiIcon then
						uv0:emojiIconFliter()
					end

					uv2:align(#ChatConst.EmojiTypes)
				end
			end, SFX_PANEL)
		end
	end)
	slot1:align(#ChatConst.EmojiTypes)
	triggerToggle(slot0.emojiGroup:GetChild(0), true)
end

slot0.filter = function(slot0, slot1)
	slot2 = _.map(pg.emoji_template.all, function (slot0)
		if pg.emoji_template[slot0].achieve == 0 then
			return pg.emoji_template[slot0]
		end
	end)
	slot3 = slot0.emojiProxy:getNewEmojiIDLIst()
	slot4 = slot0.emojiProxy:fliteNewEmojiDataByType()

	for slot9, slot10 in pairs(slot0.emojiProxy:getExEmojiDataByType(slot1)) do
		table.insert(slot2, 1, slot10)
	end

	table.sort(slot2, function (slot0, slot1)
		if slot0.index == slot1.index then
			return slot0.id < slot1.id
		end

		return slot0.index < slot1.index
	end)

	if slot1 == ChatConst.EmojiCommon then
		slot8 = {}

		for slot12, slot13 in pairs(getProxy(ChatProxy):getUsedEmoji()) do
			table.insert(slot8, {
				id = slot12,
				count = slot13
			})
		end

		table.sort(slot8, function (slot0, slot1)
			if slot0.count == slot1.count then
				return slot0.id < slot1.id
			end

			return slot1.count < slot0.count
		end)

		slot2 = _.map(slot8, function (slot0)
			return pg.emoji_template[slot0.id]
		end)
	else
		slot2 = _.filter(slot2, function (slot0)
			return table.contains(slot0.type, uv0)
		end)
	end

	if slot4[slot1] then
		for slot9, slot10 in pairs(slot4[slot1]) do
			table.insert(slot2, 1, slot10)
		end
	end

	slot0.tplCaches = slot0.tplCaches or {}

	setActive(slot0.emojiEvent:Find("null_tpl"), math.ceil(#slot2 / uv0.PageEmojiNums) == 0)

	for slot10 = slot0.emojiContent.childCount - 1, slot6, -1 do
		Destroy(slot0.emojiDots:GetChild(slot10))

		slot11 = slot0.emojiSnap:RemoveChild(slot10)
		slot11.transform.localScale = Vector3.one

		slot11.transform:SetParent(slot0._tf, false)
		setActive(slot11, false)
		slot0:clearItem(slot11)
		table.insert(slot0.tplCaches, slot11)
	end

	for slot10 = slot0.emojiContent.childCount + 1, slot6 do
		slot11 = nil
		slot11 = (#slot0.tplCaches <= 0 or table.remove(slot0.tplCaches)) and Instantiate(slot0.emojiItem)

		setActive(slot11, true)
		slot0.emojiSnap:AddChild(slot11)
		cloneTplTo(slot0.emojiDot, slot0.emojiDots)
	end

	for slot10 = 0, slot0.emojiContent.childCount - 1 do
		slot11 = slot0.emojiContent:GetChild(slot10)

		slot0:clearItem(slot11)

		slot13 = GetComponent(slot11, typeof(GridLayoutGroup))
		slot14 = UIItemList.New(slot11, slot11:Find("face"))

		slot14:make(function (slot0, slot1, slot2)
			slot3 = uv0[slot1 + 1]

			if slot0 == UIItemList.EventUpdate then
				PoolMgr.GetInstance():GetPrefab("emoji/" .. slot3.pic, slot3.pic, true, function (slot0)
					if not IsNil(uv0) then
						slot0.name = uv1.pic
						tf(slot0).sizeDelta = Vector2(uv2.cellSize.x, uv2.cellSize.y)
						tf(slot0).anchoredPosition = Vector2.zero

						if slot0:GetComponent("Animator") then
							slot1.enabled = false
						end

						if slot0:GetComponent("CriManaEffectUI") then
							slot1:Pause(true)
						end

						setParent(slot0, uv0, false)

						if table.contains(uv3, uv1.id) then
							cloneTplTo(uv4.newTag, uv0, "newtag")
							uv4.emojiProxy:removeNewEmojiID(uv1.id)
						end
					else
						PoolMgr.GetInstance():ReturnPrefab("emoji/" .. uv1.pic, uv1.pic, slot0)
					end
				end)
				onButton(uv3, slot2, function ()
					getProxy(ChatProxy):addUsedEmoji(uv0.id)
					uv1.contextData.callback(uv0.id)
					triggerButton(uv1._tf)
				end, SFX_PANEL)
			end
		end)
		slot14:align(#_.slice(slot2, slot10 * uv0.PageEmojiNums + 1, uv0.PageEmojiNums))
	end
end

slot0.emojiIconFliter = function(slot0)
	slot1 = pg.emoji_small_template
	slot2 = {}

	for slot8, slot9 in ipairs(getProxy(ChatProxy):getUsedEmojiIcon()) do
		table.insert(slot2, slot1[slot9])
	end

	for slot9 = slot0.emojiIconContent.childCount + 1, math.ceil((#slot1 + #slot2) / uv0.True_Emoji_Num_Of_Page) do
		cloneTplTo(slot0.emojiDot, slot0.emojiIconDots)
	end

	for slot9 = slot0.emojiIconContent.childCount + 1, slot5 do
		slot10 = Instantiate(slot0.emojiIconItem)
		slot11 = slot0:findTF("TitleCommom", slot10)
		slot12 = slot0:findTF("TitleAll", slot10)
		slot13 = slot0:findTF("CommomIconContainer", slot10)
		slot15 = GetComponent(slot0:findTF("AllIconContainer", slot10), "GridLayoutGroup")

		if slot9 == 1 then
			slot17 = UIItemList.New(slot13, slot0:findTF("Icon", slot13))

			slot17:make(function (slot0, slot1, slot2)
				slot3 = uv0[slot1 + 1]

				if slot0 == UIItemList.EventUpdate then
					PoolMgr.GetInstance():GetPrefab("emoji/" .. slot3.pic, slot3.pic, true, function (slot0)
						if not IsNil(uv0) then
							slot0.name = uv1.pic

							setParent(slot0, uv0, false)
							onButton(uv2, slot0, function ()
								if uv0.contextData.emojiIconCallback then
									getProxy(ChatProxy):addUsedEmojiIcon(uv1.id)
									uv0.contextData.emojiIconCallback(uv1.id)
								end
							end, SFX_PANEL)
						end
					end)
				end
			end)
			slot17:align(#slot2)

			slot15.padding.left = 20
			slot19 = UIItemList.New(slot14, slot0:findTF("Icon", slot14))

			slot19:make(function (slot0, slot1, slot2)
				slot3 = uv0[slot1 + 1]

				if slot0 == UIItemList.EventUpdate then
					PoolMgr.GetInstance():GetPrefab("emoji/" .. slot3.pic, slot3.pic, true, function (slot0)
						if not IsNil(uv0) then
							slot0.name = uv1.pic

							setParent(slot0, uv0, false)
							onButton(uv2, slot0, function ()
								if uv0.contextData.emojiIconCallback then
									getProxy(ChatProxy):addUsedEmojiIcon(uv1.id)
									uv0.contextData.emojiIconCallback(uv1.id)
								end
							end, SFX_PANEL)
						end
					end)
				end
			end)
			slot19:align(uv0.True_Emoji_Num_Of_Page - uv0.Frequently_Used_Emoji_Num)
		else
			slot16 = uv0.True_Emoji_Num_Of_Page - uv0.Frequently_Used_Emoji_Num
			slot15.padding.left = 60
			slot19 = UIItemList.New(slot14, slot0:findTF("Icon", slot14))

			slot19:make(function (slot0, slot1, slot2)
				slot3 = uv0[slot1 + 1]

				if slot0 == UIItemList.EventUpdate then
					PoolMgr.GetInstance():GetPrefab("emoji/" .. slot3.pic, slot3.pic, true, function (slot0)
						if not IsNil(uv0) then
							slot0.name = uv1.pic

							setParent(slot0, uv0, false)
							onButton(uv2, slot0, function ()
								if uv0.contextData.emojiIconCallback then
									getProxy(ChatProxy):addUsedEmojiIcon(uv1.id)
									uv0.contextData.emojiIconCallback(uv1.id)
								end
							end, SFX_PANEL)
						end
					end)
				end
			end)
			slot19:align(#_.slice(slot1, (slot9 - 2) * uv0.True_Emoji_Num_Of_Page + 9 + 1, uv0.True_Emoji_Num_Of_Page))
		end

		setActive(slot11, slot9 == 1)
		setActive(slot12, slot9 == 1)
		setActive(slot13, slot9 == 1)
		setActive(slot10, true)
		slot0.emojiIconSnap:AddChild(slot10)
	end
end

slot0.onBackPressed = function(slot0)
	pg.CriMgr.GetInstance():PlaySoundEffect_V3(SFX_CANCEL)
	triggerButton(slot0._tf)
end

slot0.clearItem = function(slot0, slot1)
	eachChild(slot1, function (slot0)
		if slot0.childCount > 0 then
			if slot0:Find("newtag") then
				Destroy(slot1)
			end

			slot2 = slot0:GetChild(0).gameObject

			PoolMgr.GetInstance():ReturnPrefab("emoji/" .. slot2.name, slot2.name, slot2)
		end
	end)
end

slot0.willExit = function(slot0)
	eachChild(slot0.emojiContent, function (slot0)
		uv0:clearItem(slot0)
	end)
	_.each(slot0.tplCaches, function (slot0)
		uv0:clearItem(slot0)
	end)

	if getProxy(SettingsProxy):IsMellowStyle() then
		setParent(slot0._tf, slot0.parentTr)
	else
		pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
	end
end

return slot0
