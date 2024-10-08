pg = pg or {}
pg.SystemOpenMgr = singletonClass("SystemOpenMgr")
slot0 = pg.SystemOpenMgr
slot1 = true
slot2 = pg.open_systems_limited

slot0.Init = function(slot0, slot1)
	print("initializing SystemOpenMgr manager...")
	slot1()
end

slot3 = pm.Facade.sendNotification

pm.Facade.sendNotification = function(slot0, slot1, slot2, slot3)
	if uv0 and slot1 == GAME.LOAD_SCENE and slot2.context.mediator then
		slot5 = slot2.context.mediator.__cname

		if getProxy(PlayerProxy) and slot4:getRawData() then
			slot7, slot8 = pg.SystemOpenMgr.GetInstance():isOpenSystem(slot6.level, slot5)

			if not slot7 then
				pg.TipsMgr.GetInstance():ShowTips(slot8)

				return
			end
		end

		if HXSet.isHxSkin() and slot5 == "NewSkinShopMediator" then
			return
		end

		uv1(slot0, GAME.CHECK_HOTFIX_VER, {
			mediatorName = slot5
		})
	end

	if slot1 == GAME.BEGIN_STAGE then
		pg.GuildMsgBoxMgr.GetInstance():OnBeginBattle()
	end

	if slot1 == GAME.FINISH_STAGE_DONE then
		pg.GuildMsgBoxMgr.GetInstance():OnFinishBattle(slot2)
	end

	uv1(slot0, slot1, slot2, slot3)
end

slot4 = function(slot0)
	slot2 = uv0[14].name

	if uv0[14].level == slot0 then
		if pg.NewStoryMgr.GetInstance():IsPlayed("ZHIHUIMIAO1") or IsUnityEditor then
			return true
		else
			return false, i18n("no_open_system_tip", slot2, slot1)
		end
	elseif slot1 < slot0 then
		return true
	else
		return false, i18n("no_open_system_tip", slot2, slot1)
	end
end

slot0.isOpenSystem = function(slot0, slot1, slot2)
	if slot2 == "EquipmentTransformTreeMediator" and LOCK_EQUIPMENT_TRANSFORM then
		return false
	end

	if slot2 == "CommanderCatMediator" then
		return uv0(slot1)
	else
		for slot6, slot7 in pairs(uv1.all) do
			if uv1[slot7].mediator == slot2 and slot1 < uv1[slot7].level then
				return false, i18n("no_open_system_tip", uv1[slot7].name, uv1[slot7].level)
			end
		end

		return true
	end
end

slot5 = function(slot0)
	for slot5, slot6 in pairs(_.sort(uv0.all, function (slot0, slot1)
		return uv0[slot1].level < uv0[slot0].level
	end)) do
		if uv0[slot6].level <= slot0 then
			return slot7
		end
	end
end

slot0.notification = function(slot0, slot1)
	if not uv0 then
		return
	end

	if uv1(slot1) and not pg.MsgboxMgr.GetInstance()._go.activeSelf and slot2.story_id and slot2.story_id ~= "" and not slot0.active and not pg.NewStoryMgr.GetInstance():IsPlayed(slot2.story_id) and not pg.SeriesGuideMgr.GetInstance():isNotFinish() then
		slot0.active = true

		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			modal = true,
			hideNo = true,
			hideClose = true,
			content = i18n("open_system_tip", slot2.name),
			weight = LayerWeightConst.TOP_LAYER,
			onYes = function ()
				uv0:doSystemGuide(uv1.id)
			end
		})
	end
end

slot0.doSystemGuide = function(slot0, slot1)
	if IsUnityEditor and not ENABLE_GUIDE then
		return
	end

	if pg.open_systems_limited[slot1].story_id and slot3 ~= "" then
		if getProxy(ContextProxy):getCurrentContext().scene ~= SCENE[slot2.scene] then
			pg.m02:sendNotification(GAME.GO_SCENE, SCENE[slot2.scene])
		end

		pg.SystemGuideMgr.GetInstance():PlayByGuideId(slot3, {}, function ()
			uv0.active = nil
		end)
	end
end
