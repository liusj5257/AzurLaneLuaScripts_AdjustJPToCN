slot0 = class("BackyardFeedPurchasePage", import("....base.BaseSubView"))

slot0.getUIName = function(slot0)
	return "BackYardFeedShopPanel"
end

slot0.OnLoaded = function(slot0)
	slot0.foodItem = slot0._tf:Find("frame")
	slot0.icon = slot0.foodItem:Find("icon_bg/icon")
	slot0.foodName = slot0._tf:Find("frame/name"):GetComponent(typeof(Text))
	slot0.foodDesc = slot0._tf:Find("frame/desc"):GetComponent(typeof(Text))
	slot0.calPanel = slot0._tf:Find("frame/cal_panel")
	slot0.cancelBtn = slot0._tf:Find("frame/cancel_btn")
	slot0.countValue = slot0.calPanel:Find("value/Text"):GetComponent(typeof(Text))
	slot0.total = slot0.calPanel:Find("total/Text"):GetComponent(typeof(Text))
	slot0.totalIcon = slot0.calPanel:Find("total/icon"):GetComponent(typeof(Image))
	slot0.minusBtn = slot0.calPanel:Find("minus_btn")
	slot0.addBtn = slot0.calPanel:Find("add_btn")
	slot0.tenBtn = slot0.calPanel:Find("ten_btn")
	slot0.confirmBtn = slot0._tf:Find("frame/ok_btn")
	slot0.cancelBtn = slot0._tf:Find("frame/cancel_btn")
	slot0.closetBtn = slot0._tf:Find("frame/close")
	slot0._parentTF = slot0._tf.parent

	setText(slot0.cancelBtn:Find("text"), i18n("word_cancel"))
	setText(slot0.confirmBtn:Find("text"), i18n("word_ok"))
	setText(slot0._tf:Find("frame/title"), i18n("words_information"))
end

slot0.OnInit = function(slot0)
	onButton(slot0, slot0._tf, function ()
		uv0:Hide()
	end, SFX_PANEL)
	onButton(slot0, slot0.cancelBtn, function ()
		uv0:Hide()
	end, SFX_PANEL)
	onButton(slot0, slot0.closetBtn, function ()
		uv0:Hide()
	end, SFX_PANEL)
end

slot0.Show = function(slot0, slot1)
	uv0.super.Show(slot0)
	slot0:UpdateFood(slot1)

	slot3 = pg.shop_template[underscore.detect(getGameset("food_shop_id")[2], function (slot0)
		return slot0[1] == uv0
	end)[2]]
	slot6 = 1
	slot0.total.text = slot3.resource_num * slot6

	LoadSpriteAtlasAsync("props/" .. id2res(slot3.resource_type), "", function (slot0)
		uv0.totalIcon.sprite = slot0
		tf(uv0.totalIcon.gameObject).sizeDelta = Vector2(50, 50)
	end)

	slot0.countValue.text = slot6

	onButton(slot0, slot0.minusBtn, function ()
		if uv0 <= 1 then
			return
		end

		uv0 = uv0 - 1
		uv1.countValue.text = uv0
		uv1.total.text = uv2 * uv0
	end, SFX_PANEL)
	onButton(slot0, slot0.addBtn, function ()
		if uv0 == 999 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("backyard_backyardGranaryLayer_buyCountLimit", uv0))

			return
		end

		uv0 = uv0 > 999 and 999 or uv0 + 1
		uv1.countValue.text = uv0
		uv1.total.text = uv2 * uv0
	end, SFX_PANEL)
	onButton(slot0, slot0.tenBtn, function ()
		if uv0 == 999 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("backyard_backyardGranaryLayer_buyCountLimit", uv0))

			return
		end

		uv0 = uv0 + 10 >= 999 and 999 or uv0 + 10
		uv1.countValue.text = uv0
		uv1.total.text = uv2 * uv0
	end, SFX_PANEL)
	onButton(slot0, slot0.confirmBtn, function ()
		uv0:Purchase({
			count = uv1,
			resourceType = uv2,
			resourceNum = uv3,
			shopId = uv4
		})
	end, SFX_CONFIRM)
end

slot0.Purchase = function(slot0, slot1)
	if getProxy(PlayerProxy):getRawData()[id2res(slot1.resourceType)] < slot1.resourceNum * slot1.count then
		if slot1.resourceType == 4 then
			GoShoppingMsgBox(i18n("switch_to_shop_tip_3", i18n("word_gem")), ChargeScene.TYPE_DIAMOND)
		elseif slot1.resourceType ~= 2 or not ItemTipPanel.ShowOilBuyTip(slot1.resourceNum * slot1.count) then
			pg.TipsMgr.GetInstance():ShowTips(i18n("backyard_backyardGranaryLayer_error_noResource", Drop.New({
				type = DROP_TYPE_RESOURCE,
				id = slot1.resourceType
			}):getName()))
		end

		slot0:Hide()

		return
	end

	slot0:emit(BackyardFeedMediator.BUY_FOOD, slot1.shopId, slot1.count)
	slot0:Hide()
end

slot0.UpdateFood = function(slot0, slot1)
	slot2 = Item.getConfigData(slot1)

	updateItem(slot0.foodItem, Item.New({
		id = slot1,
		cnt = getProxy(BagProxy):getItemCountById(slot1)
	}))

	slot0.foodName.text = slot2.name
	slot0.foodDesc.text = slot2.display
end

slot0.Hide = function(slot0)
	uv0.super.Hide(slot0)
end

slot0.OnDestroy = function(slot0)
	slot0:Hide()
end

return slot0
