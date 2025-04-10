slot0 = class("BuildingUpgradeLayer", import("view.base.BaseUI"))

slot0.getUIName = function(slot0)
	return "BuildingUpgradePanel"
end

slot0.init = function(slot0)
	slot0.btnUpgrade = slot0:findTF("window/frame/upgrade_btn")

	setText(slot0:findTF("window/frame/costback/label"), i18n("word_consume"))
	setText(slot0:findTF("window/frame/upgrade_btn/Image"), i18n("msgbox_text_upgrade"))

	slot0.loader = AutoLoader.New()
end

slot0.UpdateActivity = function(slot0, slot1)
	slot0.activity = slot1
end

slot0.didEnter = function(slot0)
	pg.UIMgr.GetInstance():BlurPanel(slot0._tf)
	onButton(slot0, slot0:findTF("window/top/btnBack"), function ()
		uv0:closeView()
	end)
	onButton(slot0, slot0:findTF("mengban"), function ()
		uv0:closeView()
	end)
	slot0:Set(slot0.activity)
end

slot0.Set = function(slot0, slot1, slot2)
	slot2 = slot2 or slot0.contextData.buildingID
	slot3 = pg.activity_event_building[slot2]

	assert(slot3, "Can't Find activity_event_building Config ID: " .. slot2)

	slot0.contextData.buildingID = slot2
	slot5 = slot1.data1KeyValueList[2][slot2] or 1
	slot6 = slot3.material[slot5]
	slot8 = 0
	slot9 = false

	if not (#slot3.buff <= slot5) then
		slot9 = slot7 or slot6[1][3] <= (slot1.data1KeyValueList[1][slot6[1][2]] or 0)
	end

	setText(slot0:findTF("window/top/name"), slot3.name)
	setText(slot0:findTF("window/top/name/lv"), "Lv." .. slot5)
	setScrollText(slot0:findTF("window/frame/describe/text"), slot3.desc)
	setText(slot0:findTF("window/frame/content/title/lv/current"), "Lv." .. slot5)
	setActive(slot0:findTF("window/frame/content/title/lv/next"), not slot7)

	if not slot7 then
		setText(slot0:findTF("window/frame/content/title/lv/next"), "Lv." .. slot5 + 1)
	end

	slot10 = slot3.buff[slot5]
	slot11 = pg.benefit_buff_template[slot10]

	assert(slot11, "Can't Find benefit_buff_template Config ID: " .. slot10)
	setText(slot0:findTF("window/frame/content/preview/current"), slot11.desc)
	setActive(slot0:findTF("window/frame/content/preview/arrow"), not slot7)
	setActive(slot0:findTF("window/frame/content/preview/next"), not slot7)

	if not slot7 then
		slot12 = slot3.buff[slot5 + 1]
		slot11 = pg.benefit_buff_template[slot12]

		assert(slot11, "Can't Find benefit_buff_template Config ID: " .. slot12)
		setText(slot0:findTF("window/frame/content/preview/next"), slot11.desc)
		slot0.loader:GetSprite(Item.getConfigData(slot8).icon, "", slot0:findTF("window/frame/costback/icon"))
	end

	setText(slot0:findTF("window/frame/costback/cost"), not slot7 and slot3.material[slot5][1][3] or 0)
	onButton(slot0, slot0.btnUpgrade, function ()
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			content = i18n("building_upgrade_tip"),
			onYes = function ()
				if uv0 then
					return
				elseif uv1 then
					uv2:emit(BuildingUpgradeMediator.ACTIVITY_OPERATION, {
						cmd = 1,
						activity_id = uv2.activity.id,
						arg1 = uv3
					})
				else
					pg.TipsMgr.GetInstance():ShowTips(i18n("building_tip"))
				end
			end
		})
	end)
	setGray(slot0.btnUpgrade, slot7)
	setButtonEnabled(slot0.btnUpgrade, not slot7)
end

slot0.willExit = function(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
end

return slot0
