pg = pg or {}
pg.ToastMgr = singletonClass("ToastMgr")
slot0 = pg.ToastMgr
slot1 = require("Mgr/Pool/PoolPlural")
slot0.TYPE_ATTIRE = "Attire"
slot0.TYPE_TECPOINT = "Tecpoint"
slot0.TYPE_TROPHY = "Trophy"
slot0.TYPE_META = "Meta"
slot0.TYPE_CRUSING = "Crusing"
slot0.TYPE_VOTE = "Vote"
slot0.TYPE_EMOJI = "Emoji"
slot0.TYPE_COMBAT_UI = "CombatUI"
slot0.TYPE_COVER = "Cover"
slot0.ToastInfo = {
	[slot0.TYPE_ATTIRE] = {
		Attire = "attire_tpl"
	},
	[slot0.TYPE_TECPOINT] = {
		Buff = "buff_tpl",
		Point = "point_tpl"
	},
	[slot0.TYPE_TROPHY] = {
		Trophy = "trophy_tpl"
	},
	[slot0.TYPE_META] = {
		MetaLevel = "meta_level_tpl",
		MetaExp = "meta_exp_tpl"
	},
	[slot0.TYPE_CRUSING] = {
		Crusing = "crusing_pt_tpl"
	},
	[slot0.TYPE_VOTE] = {
		Vote = "vote_tpl"
	},
	[slot0.TYPE_EMOJI] = {
		Emoji = "emoji_tpl"
	},
	[slot0.TYPE_COMBAT_UI] = {
		CombatUI = "combatui_tpl"
	},
	[slot0.TYPE_COVER] = {
		Cover = "cover_tpl"
	}
}

slot0.Init = function(slot0, slot1)
	LoadAndInstantiateAsync("ui", "ToastUI", function (slot0)
		uv0._go = slot0

		uv0._go:SetActive(false)

		uv0._tf = uv0._go.transform
		uv0.container = uv0._tf:Find("container")

		uv0._go.transform:SetParent(pg.UIMgr.GetInstance().OverlayToast, false)

		uv0.pools = {}
		slot1 = {}

		for slot5, slot6 in pairs(uv1.ToastInfo) do
			for slot10, slot11 in pairs(slot6) do
				slot1[slot10 .. "Tpl"] = slot11
			end
		end

		for slot5, slot6 in pairs(slot1) do
			slot7 = uv0._tf:Find("resources/" .. slot6)

			if slot6 == "meta_exp_tpl" then
				setText(slot7:Find("ExpFull/Tip"), i18n("meta_toast_fullexp"))
				setText(slot7:Find("ExpAdd/Tip"), i18n("meta_toast_tactics"))
			end

			setActive(slot7, false)

			uv0.pools[slot5] = uv2.New(slot7.gameObject, 5)
		end

		uv0:ResetUIDandHistory()

		if uv3 then
			uv3()
		end
	end, true, true)
end

slot0.ResetUIDandHistory = function(slot0)
	slot0.completedJob = 0
	slot0.actionJob = 0
	slot0.buffer = {}
end

slot0.ShowToast = function(slot0, slot1, slot2)
	slot3 = #slot0.buffer

	table.insert(slot0.buffer, {
		state = 0,
		type = slot1,
		info = slot2
	})
	setActive(slot0._tf, true)

	if #slot0.buffer == 1 or slot0.buffer[slot3].state >= 2 then
		slot0:Toast()
	end
end

slot0.Toast = function(slot0)
	if slot0.actionJob >= #slot0.buffer then
		return
	end

	if slot0.buffer[slot0.actionJob] and slot0.buffer[slot0.actionJob].state < 2 then
		return
	elseif slot0.buffer[slot0.actionJob] and slot0.buffer[slot0.actionJob].type ~= slot0.buffer[slot0.actionJob + 1].type and slot0.buffer[slot0.actionJob].state < 3 then
		return
	end

	slot0.actionJob = slot0.actionJob + 1
	slot1 = slot0.buffer[slot0.actionJob]
	slot2 = slot0.actionJob
	slot1.state = 1

	slot0["Update" .. slot1.type](slot0, slot1, function ()
		uv0.state = 2

		uv1:Toast()
	end, function ()
		uv0.state = 3

		if uv1.buffer[uv2 + 1] and uv1.buffer[uv2 + 1].state < 1 then
			uv1:Toast()
		end

		uv1.completedJob = uv1.completedJob + 1

		if uv1.completedJob >= #uv1.buffer then
			uv1:ResetUIDandHistory()
			setActive(uv1._tf, false)

			for slot3, slot4 in pairs(uv1.pools) do
				slot4:ClearItems(false)
			end
		end
	end)
end

slot0.GetAndSet = function(slot0, slot1, slot2)
	slot3 = slot0.pools[slot1 .. "Tpl"]:Dequeue()

	setActive(slot3, true)
	setParent(slot3, slot2)
	slot3.transform:SetAsLastSibling()

	return slot3
end

slot0.UpdateAttire = function(slot0, slot1, slot2, slot3)
	slot4 = slot0:GetAndSet(slot1.type, slot0.container)
	slot5 = slot4:GetComponent(typeof(DftAniEvent))

	slot5:SetTriggerEvent(function (slot0)
		if uv0 then
			uv0()
		end

		uv1:SetTriggerEvent(nil)
	end)
	slot5:SetEndEvent(function (slot0)
		setActive(uv0, false)
		uv1.pools[uv2.type .. "Tpl"]:Enqueue(uv0)
		uv3:SetEndEvent(nil)

		if uv4 then
			uv4()
		end
	end)
	slot4:GetComponent(typeof(Animation)):Play("attire")

	slot6 = slot1.info

	assert(isa(slot6, AttireFrame))
	setActive(slot4.transform:Find("bg/icon_frame"), slot6:getType() == AttireConst.TYPE_ICON_FRAME)
	setActive(slot4.transform:Find("bg/chat_frame"), slot7 == AttireConst.TYPE_CHAT_FRAME)
	setText(slot4.transform:Find("bg/Text"), HXSet.hxLan(slot6:getConfig("name")))
end

slot0.UpdateCombatUI = function(slot0, slot1, slot2, slot3)
	slot4 = slot0:GetAndSet(slot1.type, slot0.container)
	slot5 = pg.item_data_battleui[slot1.info.id]

	LoadImageSpriteAsync("Props/" .. slot5.display_icon, slot4.transform:Find("content/icon"), true)
	setText(slot4.transform:Find("content/name"), slot5.name)
	setText(slot4.transform:Find("content/label"), i18n("battle_ui_unlock"))

	slot6 = slot4.transform:Find("content")
	slot6.anchoredPosition = Vector2(-550, 0)

	LeanTween.moveX(rtf(slot6), 0, 0.5)
	LeanTween.moveX(rtf(slot6), -550, 0.5):setDelay(5):setOnComplete(System.Action(function ()
		setActive(uv0, false)
		uv1.pools[uv2.type .. "Tpl"]:Enqueue(uv0)

		if uv3 then
			uv3()
		end
	end))

	if slot2 then
		slot2()
	end
end

slot0.UpdateEmoji = function(slot0, slot1, slot2, slot3)
	slot4 = slot0:GetAndSet(slot1.type, slot0.container)
	slot5 = slot4:GetComponent(typeof(DftAniEvent))

	slot5:SetTriggerEvent(function (slot0)
		if uv0 then
			uv0()
		end

		uv1:SetTriggerEvent(nil)
	end)
	slot5:SetEndEvent(function (slot0)
		setActive(uv0, false)
		uv1.pools[uv2.type .. "Tpl"]:Enqueue(uv0)
		uv3:SetEndEvent(nil)

		if uv4 then
			uv4()
		end
	end)
	slot4:GetComponent(typeof(Animation)):Play("attire")
	setText(slot4.transform:Find("bg/label"), i18n("word_emoji_unlock"))
	setText(slot4.transform:Find("bg/Text"), i18n("word_get_emoji", slot1.info.item_name))
end

slot0.FADE_TIME = 0.4
slot0.FADE_OUT_TIME = 1
slot0.SHOW_TIME = 1.5
slot0.DELAY_TIME = 0.3

slot0.UpdateTecpoint = function(slot0, slot1, slot2, slot3)
	slot4 = slot1.info
	slot7 = slot4.attr
	slot8 = slot4.value
	slot9 = slot0:GetAndSet("Point", slot0.container)
	GetComponent(slot9.transform, "CanvasGroup").alpha = 0

	setText(findTF(slot9, "PointText"), "+" .. slot4.point)

	slot10 = {}

	if slot4.typeList then
		for slot14 = 1, #slot6 do
			slot15 = slot0:GetAndSet("Buff", slot0.container)
			GetComponent(slot15.transform, "CanvasGroup").alpha = 0

			setImageSprite(slot15.transform:Find("TypeImg").transform, GetSpriteFromAtlas("ShipType", "buffitem_tec_" .. slot6[slot14]))
			setText(slot15.transform:Find("AttrText").transform, AttributeType.Type2Name(pg.attribute_info_by_type[slot7].name))
			setText(slot15.transform:Find("ValueText").transform, "+" .. slot8)

			slot10[slot14] = go(slot15)
		end
	end

	slot11 = function()
		if uv0 then
			uv0()
		end

		if uv1 then
			uv1()
		end
	end

	slot13 = GetComponent(slot9, "CanvasGroup")

	slot15 = function()
		LeanTween.moveX(rtf(uv0), 0, uv1.FADE_OUT_TIME)
		LeanTween.value(uv0, 1, 0, uv1.FADE_OUT_TIME):setOnUpdate(System.Action_float(uv2)):setOnComplete(System.Action(function ()
			setActive(uv0, false)
			uv1.pools.PointTpl:Enqueue(uv0)

			if not uv2 then
				uv3()
			end
		end))
	end

	slot20 = uv0.FADE_TIME

	LeanTween.value(go(slot9), 0, 1, slot20):setOnUpdate(System.Action_float(function (slot0)
		uv0.alpha = slot0
	end)):setOnComplete(System.Action(function ()
		LeanTween.delayedCall(uv0, uv1.SHOW_TIME, System.Action(uv2))
	end))

	slot16 = function(slot0, slot1, slot2)
		slot3 = GetComponent(slot0.transform, "CanvasGroup")

		slot5 = function()
			LeanTween.moveX(rtf(uv0), 0, uv1.FADE_OUT_TIME)
			LeanTween.value(uv0, 1, 0, uv1.FADE_OUT_TIME):setOnUpdate(System.Action_float(uv2)):setOnComplete(System.Action(function ()
				setActive(uv0, false)
				uv1.pools.BuffTpl:Enqueue(uv0)

				if uv2 then
					uv3()
				end
			end))
		end

		LeanTween.value(slot0, 0, 1, uv0.FADE_TIME):setOnUpdate(System.Action_float(function (slot0)
			uv0.alpha = slot0
		end)):setOnComplete(System.Action(function ()
			LeanTween.delayedCall(uv0, uv1.SHOW_TIME + (uv1.FADE_OUT_TIME - uv1.DELAY_TIME) * uv2, System.Action(uv3))
		end))
	end

	for slot20, slot21 in ipairs(slot10) do
		LeanTween.delayedCall(slot12, slot20 * uv0.DELAY_TIME, System.Action(function ()
			uv0(uv1, uv2, uv2 == #uv3)
		end))
	end
end

slot0.UpdateTrophy = function(slot0, slot1, slot2, slot3)
	slot4 = pg.CriMgr.GetInstance()

	slot4:PlaySoundEffect_V3(slot1.info.sound or SFX_UI_TIP)

	slot4 = slot0:GetAndSet(slot1.type, slot0.container)
	slot5 = pg.medal_template[slot1.info.id]

	LoadImageSpriteAsync("medal/s_" .. slot5.icon, slot4.transform:Find("content/icon"), true)
	setText(slot4.transform:Find("content/name"), slot5.name)
	setText(slot4.transform:Find("content/label"), i18n("trophy_achieved"))

	slot6 = slot4.transform:Find("content")
	slot6.anchoredPosition = Vector2(-550, 0)

	LeanTween.moveX(rtf(slot6), 0, 0.5)
	LeanTween.moveX(rtf(slot6), -550, 0.5):setDelay(5):setOnComplete(System.Action(function ()
		setActive(uv0, false)
		uv1.pools[uv2.type .. "Tpl"]:Enqueue(uv0)

		if uv3 then
			uv3()
		end
	end))

	if slot2 then
		slot2()
	end
end

slot0.UpdateMeta = function(slot0, slot1, slot2, slot3)
	slot4 = slot1.info
	slot7 = slot0:GetAndSet("MetaExp", slot0.container)
	slot8 = slot0:GetAndSet("MetaLevel", slot0.container)
	slot10, slot11 = MetaCharacterConst.GetMetaCharacterToastPath(MetaCharacterConst.GetMetaShipGroupIDByConfigID(slot4.metaShipVO.configId))

	setImageSprite(slot7.transform:Find("ShipImg"), LoadSprite(slot10, slot11))

	slot15 = slot4.addDayExp

	setSlider(slot7.transform:Find("Progress"), 0, slot13, slot14)

	slot17 = slot4.curSkillID
	slot20 = slot4.oldSkillLevel < slot4.newSkillLevel
	slot21 = slot7.transform:Find("ExpFull")
	slot22 = slot7.transform:Find("ExpAdd")

	if pg.gameset.meta_skill_exp_max.key_value <= slot4.newDayExp then
		setActive(slot21, true)
		setActive(slot22, false)
	else
		setText(slot7.transform:Find("ExpAdd/Value"), string.format("+%d", slot15))
		setActive(slot21, false)
		setActive(slot22, slot20)
	end

	if slot20 then
		setImageSprite(slot8.transform:Find("Skill/Icon"), LoadSprite("skillicon/" .. getSkillConfig(slot17).icon))

		slot25 = slot8.transform:Find("LevelUp")
		slot26 = slot8.transform:Find("LevelMax")

		if pg.skill_data_template[slot17].max_level <= slot19 then
			setActive(slot25, false)
			setActive(slot26, true)
		else
			setText(slot8.transform:Find("LevelUp/Value"), string.format("+%d", slot19 - slot18))
			setActive(slot25, true)
			setActive(slot26, false)
		end
	end

	slot23 = function()
		if uv0 then
			uv0()
		end

		if uv1 then
			uv1()
		end
	end

	GetComponent(slot7, "CanvasGroup").alpha = 0
	GetComponent(slot8, "CanvasGroup").alpha = 0

	if slot16 or slot20 then
		slot28 = function()
			LeanTween.moveX(rtf(uv0.transform), 0, uv1.FADE_OUT_TIME)
			LeanTween.value(uv0, 1, 0, uv1.FADE_OUT_TIME):setOnUpdate(System.Action_float(uv2)):setOnComplete(System.Action(function ()
				uv0.pools.MetaExpTpl:Enqueue(uv1)

				if not uv2 then
					uv0.pools.MetaLevelTpl:Enqueue(uv3)
					uv4()
				end
			end))
		end

		LeanTween.value(slot7, 0, 1, uv0.FADE_TIME):setOnUpdate(System.Action_float(function (slot0)
			uv0.alpha = slot0
		end)):setOnComplete(System.Action(function ()
			LeanTween.delayedCall(uv0, uv1.SHOW_TIME, System.Action(uv2))
		end))
	end

	if slot20 then
		slot27 = function(slot0)
			uv0.alpha = slot0
		end

		slot28 = function()
			LeanTween.moveX(rtf(uv0.transform), 0, uv1.FADE_OUT_TIME)
			LeanTween.value(uv0, 1, 0, uv1.FADE_OUT_TIME):setOnUpdate(System.Action_float(uv2)):setOnComplete(System.Action(function ()
				uv0.pools.MetaLevelTpl:Enqueue(uv1)
				uv2()
			end))
		end

		slot29 = function()
			LeanTween.delayedCall(uv0, uv1.SHOW_TIME, System.Action(uv2))
		end

		LeanTween.delayedCall(slot8, uv0.DELAY_TIME, System.Action(function ()
			LeanTween.value(uv0, 0, 1, uv1.FADE_TIME):setOnUpdate(System.Action_float(uv2)):setOnComplete(System.Action(uv3))
		end))
	end
end

slot0.UpdateCrusing = function(slot0, slot1, slot2, slot3)
	slot4 = slot1.info
	slot7 = pg.CriMgr.GetInstance()

	slot7:PlaySoundEffect_V3(slot1.info.sound or SFX_UI_TIP)

	slot7 = tf(slot0:GetAndSet(slot1.type, slot0.container))
	slot8 = Drop.New({
		type = DROP_TYPE_VITEM,
		id = slot4.ptId
	})

	LoadImageSpriteAtlasAsync(slot8:getIcon(), "", slot7:Find("PointIcon"), true)
	setText(slot7:Find("info/name"), slot8:getName())
	setText(slot7:Find("info/pt"), "+" .. slot4.ptCount)
	setAnchoredPosition(slot7, {
		x = slot7.rect.width
	})
	LeanTween.alphaCanvas(GetComponent(slot7, typeof(CanvasGroup)), 1, 0.5):setFrom(0):setOnComplete(System.Action(function ()
		LeanTween.alphaCanvas(uv0, 0, 0.5):setDelay(5):setOnComplete(System.Action(function ()
			setActive(uv0, false)
			uv1.pools[uv2.type .. "Tpl"]:Enqueue(go(uv0))

			if uv3 then
				uv3()
			end
		end))

		if uv5 then
			uv5()
		end
	end))
end

slot0.UpdateVote = function(slot0, slot1, slot2, slot3)
	slot4 = slot1.info
	slot7 = Drop.New({
		type = DROP_TYPE_ITEM,
		id = slot4.ptId
	})
	slot8 = tf(slot0:GetAndSet(slot1.type, slot0.container))

	LoadImageSpriteAtlasAsync(slot7:getIcon(), "", slot8:Find("PointIcon"), true)
	setText(slot8:Find("info/name"), slot7:getName())
	setText(slot8:Find("info/pt"), "+" .. slot4.ptCount)
	setAnchoredPosition(slot8, {
		x = slot8.rect.width
	})
	LeanTween.alphaCanvas(GetComponent(slot8, typeof(CanvasGroup)), 1, 0.5):setFrom(0):setOnComplete(System.Action(function ()
		LeanTween.alphaCanvas(uv0, 0, 0.5):setDelay(5):setOnComplete(System.Action(function ()
			setActive(uv0, false)
			uv1.pools[uv2.type .. "Tpl"]:Enqueue(go(uv0))

			if uv3 then
				uv3()
			end
		end))

		if uv5 then
			uv5()
		end
	end))
end

slot0.UpdateCover = function(slot0, slot1, slot2, slot3)
	slot4 = slot0:GetAndSet(slot1.type, slot0.container)
	slot5 = slot4:GetComponent(typeof(DftAniEvent))

	slot5:SetTriggerEvent(function (slot0)
		if uv0 then
			uv0()
		end

		uv1:SetTriggerEvent(nil)
	end)
	slot5:SetEndEvent(function (slot0)
		setActive(uv0, false)
		uv1.pools[uv2.type .. "Tpl"]:Enqueue(uv0)
		uv3:SetEndEvent(nil)

		if uv4 then
			uv4()
		end
	end)
	slot4:GetComponent(typeof(Animation)):Play("attire")
	setText(slot4.transform:Find("bg/Text"), HXSet.hxLan(slot1.info:getConfig("get_tips")))
end

slot0.Dispose = function(slot0)
	setActive(slot0._tf, false)
	slot0:ResetUIDandHistory()

	for slot4, slot5 in pairs(slot0.pools) do
		slot5:Clear(false)
	end
end
