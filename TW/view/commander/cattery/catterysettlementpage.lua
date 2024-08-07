slot0 = class("CatterySettlementPage", import("...base.BaseSubView"))

slot0.getUIName = function(slot0)
	return "CatterySettlementPage"
end

slot0.OnLoaded = function(slot0)
	slot0.painting = slot0:findTF("painting")
	slot0.uilist = UIItemList.New(slot0:findTF("frame/commanders"), slot0:findTF("frame/commanders/tpl"))

	setText(slot0:findTF("dialogue/label/Text1"), i18n("cattery_settlement_dialogue_1"))
	setText(slot0:findTF("dialogue/label/Text3"), i18n("cattery_settlement_dialogue_2"))
	setText(slot0:findTF("dialogue/label1/Text1"), i18n("cattery_settlement_dialogue_3"))
	setText(slot0:findTF("dialogue/label1/Text3"), i18n("cattery_settlement_dialogue_4"))

	slot0.timeTxt = slot0:findTF("dialogue/label/Text2"):GetComponent(typeof(Text))
	slot0.expTxt = slot0:findTF("dialogue/label1/Text2"):GetComponent(typeof(Text))
	slot0.confirmBtn = slot0:findTF("comfirm")
end

slot0.OnInit = function(slot0)
	onButton(slot0, slot0.confirmBtn, function ()
		uv0:Destroy()
	end, SFX_PANEL)

	slot0.cards = {}
	slot1 = slot0.uilist

	slot1:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			uv0:UpdateCommander(slot2, uv0.displays[slot1 + 1])
		end
	end)
end

slot0.Show = function(slot0, slot1)
	uv0.super.Show(slot0)

	slot0.home = slot1

	slot0:SetPainting()
	slot0:UpdateCommanders()
	slot0:UpdateDialogue()

	slot0.UIMgr = pg.UIMgr.GetInstance()

	slot0.UIMgr:BlurPanel(slot0._tf)
end

slot0.Hide = function(slot0)
	uv0.super.Hide(slot0)
	slot0.UIMgr:UnblurPanel(slot0._tf, slot0.UIMgr._normalUIMain)
end

slot0.GetCurrentFlagship = function(slot0)
	return Ship.New({
		id = 999,
		configId = 312011
	})
end

slot0.SetPainting = function(slot0)
	slot0:ReturnPainting()

	slot2 = slot0:GetCurrentFlagship():getPainting()
	slot0.paintingName = slot2

	setPaintingPrefabAsync(slot0.painting, slot2, "jiesuan")
end

slot0.UpdateCommanders = function(slot0)
	slot0.displays = {}

	for slot6, slot7 in pairs(slot0.home:GetCatteries()) do
		table.insert(slot0.displays, slot7)
	end

	table.sort(slot0.displays, function (slot0, slot1)
		return slot1:GetCommanderId() < slot0:GetCommanderId()
	end)
	slot0.uilist:align(#slot0.displays)
end

slot0.UpdateCommander = function(slot0, slot1, slot2)
	if not slot0.cards[slot1] then
		slot0.cards[slot1] = CatterySettlementCard.New(slot1)
	end

	slot3:Update(slot2, slot2:GetCacheExp())
	slot3:Action(function ()
	end)
end

slot0.UpdateDialogue = function(slot0)
	slot3 = 0
	slot4 = 0

	for slot8, slot9 in pairs(slot0.home:GetCatteries()) do
		slot3 = slot3 + slot9:GetCacheExp()

		if slot4 < slot9:GetCacheExpTime() then
			slot4 = slot10
		end
	end

	slot0.timeTxt.text = pg.TimeMgr.GetInstance():DescCDTime(slot4)
	slot0.expTxt.text = slot3
end

slot0.ReturnPainting = function(slot0)
	if slot0.paintingName then
		retPaintingPrefab(slot0.painting, slot0.paintingName)

		slot0.paintingName = nil
	end
end

slot0.OnDestroy = function(slot0)
	slot0:ReturnPainting()

	for slot4, slot5 in pairs(slot0.cards) do
		slot5:Dispose()
	end

	slot0:Hide()

	slot0.cards = nil
end

return slot0
