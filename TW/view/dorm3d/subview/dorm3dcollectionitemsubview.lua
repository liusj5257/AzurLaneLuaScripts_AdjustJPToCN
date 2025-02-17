slot0 = class("Dorm3dCollectionItemSubView", import("view.base.BaseSubView"))

slot0.OnLoaded = function(slot0)
	slot1 = slot0._tf:Find("list/container")
	slot0.itemList = UIItemList.New(slot1, slot1:Find("tpl"))

	slot0.itemList:make(function (slot0, slot1, slot2)
		slot1 = slot1 + 1

		if slot0 == UIItemList.EventUpdate then
			slot3 = uv0.ids[slot1]
			slot5 = uv0.unlockDic[slot3]
			slot6 = ApartmentProxy.CheckUnlockConfig(pg.dorm3d_collection_template[slot3].unlock)
			slot7 = slot1

			for slot11 = 1, 2 do
				cloneTplTo(uv0.numContainer:Find("num_" .. slot7 % 10), slot2:Find("num"))

				slot7 = math.floor(slot7 / 10)
			end

			setActive(slot2:Find("content/lock"), not slot6)
			setActive(slot2:Find("content/mark"), slot6 and not slot5)
			setText(slot2:Find("content/name"), slot5 and slot4.name or slot6 and i18n("dorm3d_collect_not_found", i18n(slot4.text)) or i18n("dorm3d_collect_locked", slot4.unlock[2]))
			onToggle(uv0, slot2, function (slot0)
				if slot0 then
					uv0:UpdateDisplay(uv1, uv2)
				end

				uv3(slot0)
			end, SFX_PANEL)
			(function (slot0)
				setTextColor(uv0:Find("content/name"), Color.NewHex(not uv1 and "a9a9a9" or slot0 and "2d1dfc" or "393a3c"))
				eachChild(uv0:Find("num"), function (slot0)
					setImageColor(slot0, Color.NewHex(uv0 and "2d1dfd" or "393a3c"))
				end)
			end)()
		end
	end)

	slot0.numContainer = slot0._tf:Find("list/number")
	slot0.rtInfo = slot0._tf:Find("info")
end

slot0.OnInit = function(slot0)
	slot0.dorm3dmainscene = pg.m02:retrieveMediator(Dorm3dRoomMediator.__cname):getViewComponent()
	slot2 = getProxy(ApartmentProxy):getRoom(slot0.contextData.roomId)
	slot0.unlockDic = slot2.collectItemDic
	slot0.ids = Clone(pg.dorm3d_collection_template.get_id_list_by_room_id[slot2:GetConfigID()] or {})

	table.sort(slot0.ids, CompareFuncs({
		function (slot0)
			return uv0.unlockDic[slot0] and 0 or 1
		end,
		function (slot0)
			return ApartmentProxy.CheckUnlockConfig(pg.dorm3d_collection_template[slot0].unlock) and 0 or 1
		end,
		function (slot0)
			return slot0
		end
	}))
	setText(slot0.rtInfo:Find("count"), string.format("<color=#2d1dfc>%d</color>/%d", table.getCount(slot0.unlockDic), #slot0.ids))
	slot0.itemList:align(#slot0.ids)
	triggerToggle(slot0.itemList.container:GetChild(0), true)
end

slot0.UpdateDisplay = function(slot0, slot1, slot2)
	slot3 = pg.dorm3d_collection_template[slot2]
	slot4 = slot0.unlockDic[slot2]

	setActive(slot0.rtInfo:Find("empty"), not slot4)

	if not slot4 then
		slot5 = nil

		if not _.any(slot3.model, function (slot0)
			slot1 = nil
			slot2, uv0 = uv1.dorm3dmainscene:CheckSceneItemActiveByPath(slot0)

			return slot2
		end) then
			setText(slot0.rtInfo:Find("empty"), i18n("dorm3d_collect_block_by_furniture", Dorm3dFurniture.New({
				configId = slot5
			}):GetName()))
		else
			setText(slot0.rtInfo:Find("empty"), i18n("dorm3d_collect_nothing"))
		end
	end

	setActive(slot0.rtInfo:Find("content"), slot4)

	if not slot4 then
		return
	end

	GetImageSpriteFromAtlasAsync("dorm3dcollection/" .. slot3.icon, "", slot5:Find("icon"), true)
	setText(slot5:Find("name/Text"), slot3.name)
	setText(slot5:Find("desc"), slot3.desc)
	setActive(slot5:Find("favor"), slot3.award > 0)

	if slot3.award > 0 then
		setText(slot5:Find("favor/Text"), i18n("dorm3d_collect_favor_plus") .. pg.dorm3d_favor_trigger[slot3.award].num)
	end
end

slot0.OnDestroy = function(slot0)
end

return slot0
