pg = pg or {}
pg.WorldToastMgr = singletonClass("WorldToastMgr")
slot0 = pg.WorldToastMgr
slot0.Type2PictrueName = {
	[0] = "type_operation",
	"type_fight",
	"type_search",
	"type_build",
	"type_defience",
	"type_special",
	"type_collection",
	"type_boss"
}

slot0.Init = function(slot0, slot1)
	LoadAndInstantiateAsync("ui", "WorldTaskFloatUI", function (slot0)
		uv0._go = slot0

		uv0._go:SetActive(false)

		uv0._tf = uv0._go.transform

		uv0._tf:SetParent(pg.UIMgr.GetInstance().OverlayToast, false)

		uv0.displayList = {}

		if uv1 then
			uv1()
		end
	end, true, true)
end

slot0.ShowToast = function(slot0, slot1, slot2)
	table.insert(slot0.displayList, {
		taskVO = slot1,
		isSubmitDone = slot2
	})

	if #slot0.displayList == 1 then
		slot0:StartToast()
	end
end

slot0.StartToast = function(slot0)
	setAnchoredPosition(slot0._tf, {
		y = slot0._tf.rect.height
	})
	setActive(slot0._tf, true)

	slot1 = slot0.displayList[1]

	setActive(slot0._tf:Find("accept_info"), not slot1.isSubmitDone)
	setActive(slot0._tf:Find("submit_info"), slot1.isSubmitDone)

	slot2 = slot1.taskVO

	GetImageSpriteFromAtlasAsync("ui/worldtaskfloatui_atlas", uv0.Type2PictrueName[slot2.config.type], slot0._tf:Find("type_icon"), true)
	setText(slot0._tf:Find("desc"), setColorStr(shortenString(slot2.config.name, 12), slot1.isSubmitDone and COLOR_GREEN or COLOR_WHITE))

	slot3 = {}

	table.insert(slot3, function (slot0)
		uv0.twId = LeanTween.moveY(uv0._tf, 0, 0.5):setOnComplete(System.Action(slot0))
	end)
	table.insert(slot3, function (slot0)
		uv0.twId = LeanTween.moveY(uv0._tf, uv0._tf.rect.height, 0.5):setDelay(3):setOnComplete(System.Action(slot0))
	end)
	seriesAsync(slot3, function ()
		table.remove(uv0.displayList, 1)

		if #uv0.displayList > 0 then
			uv0:StartToast()
		else
			setActive(uv0._tf, false)
		end
	end)
end

slot0.Dispose = function(slot0)
	LeanTween.cancel(slot0.twId)

	slot0.displayList = nil
end
