slot0 = class("BackYardFurniturePage", import(".BackYardShopBasePage"))

table.insert(Furniture.INDEX_TO_SHOP_TYPE, 1, {})

slot2 = function(slot0)
	return uv0[slot0]
end

slot0.getUIName = function(slot0)
	return "BackYardFurniturePage"
end

slot0.OnLoaded = function(slot0)
	slot0.scrollRect = slot0:findTF("adpter/frame/bg"):GetComponent("LScrollRect")
	slot0.searchInput = slot0:findTF("adpter/search")
	slot0.searchClear = slot0:findTF("adpter/search/clear")
	slot0.filterBtn = slot0:findTF("adpter/filter")
	slot0.filterBtnTxt = slot0.filterBtn:Find("Text"):GetComponent(typeof(Text))
	slot0.filterBtnTxt.text = i18n("word_default")
	slot0.orderBtn = slot0:findTF("adpter/order")
	slot0.orderBtnIcon = slot0.orderBtn:Find("icon")
	slot0.orderBtnTxt = slot0.orderBtn:Find("Text"):GetComponent(typeof(Text))

	setText(slot0.searchInput:Find("Placeholder"), i18n("courtyard_label_search_holder"))
end

slot0.OnInit = function(slot0)
	slot0.cards = {}

	slot0.scrollRect.onInitItem = function(slot0)
		uv0:OnInitItem(slot0)
	end

	slot0.scrollRect.onUpdateItem = function(slot0, slot1)
		uv0:OnUpdateItem(slot0, slot1)
	end

	onInputChanged(slot0, slot0.searchInput, function ()
		setActive(uv0.searchClear, getInputText(uv0.searchInput) ~= "")
		uv0:OnSearchKeyChange()
	end)
	onButton(slot0, slot0.searchClear, function ()
		setInputText(uv0.searchInput, "")
	end, SFX_PANEL)

	slot0.orderMode = BackYardDecorationFilterPanel.ORDER_MODE_DASC
	slot0.orderBtnIcon.localScale = Vector3(1, -1, 1)

	onToggle(slot0, slot0.orderBtn, function (slot0)
		uv0.orderMode = slot0 and BackYardDecorationFilterPanel.ORDER_MODE_ASC or BackYardDecorationFilterPanel.ORDER_MODE_DASC

		uv1(uv0.orderMode)
		uv0:UpdateFliterData()
		uv0.contextData.filterPanel:Sort()
		uv0:OnFilterDone()

		uv0.orderBtnIcon.localScale = Vector3(1, slot0 and 1 or -1, 1)
	end, SFX_PANEL)
	(function (slot0)
		slot1 = ""

		if slot0 == BackYardDecorationFilterPanel.ORDER_MODE_ASC then
			slot1 = i18n("word_asc")
		elseif slot0 == BackYardDecorationFilterPanel.ORDER_MODE_DASC then
			slot1 = i18n("word_desc")
		end

		uv0.orderBtnTxt.text = slot1
	end)(slot0.orderMode)

	slot0.contextData.filterPanel.confirmFunc = function()
		uv0.filterBtnTxt.text = uv0.contextData.filterPanel.sortTxt

		uv0:OnFilterDone()
	end

	onButton(slot0, slot0.filterBtn, function ()
		uv0.contextData.filterPanel:setFilterData(uv0:GetData())
		uv0.contextData.filterPanel:ExecuteAction("Show")
	end, SFX_PANEL)
	slot0:UpdateFliterData()
end

slot0.UpdateFliterData = function(slot0)
	slot0.contextData.filterPanel:updateOrderMode(slot0.orderMode)
end

slot0.OnFilterDone = function(slot0)
	slot0.displays = slot0.contextData.filterPanel:GetFilterData()

	slot0.scrollRect:SetTotalCount(#slot0.displays)
end

slot0.OnDisplayUpdated = function(slot0, slot1)
	for slot5, slot6 in ipairs(slot0.displays) do
		if slot6.id == slot1.id then
			slot0.displays[slot5] = slot1

			break
		end
	end
end

slot0.OnCardUpdated = function(slot0, slot1)
	for slot5, slot6 in pairs(slot0.cards) do
		if slot6.furniture.id == slot1.id then
			slot6:Update(slot1)

			break
		end
	end
end

slot0.OnDormUpdated = function(slot0)
	slot0:UpdateFliterData()
end

slot0.OnSetUp = function(slot0)
	slot0:InitFurnitureList()
end

slot0.OnSearchKeyChange = function(slot0)
	slot0:InitFurnitureList()
end

slot0.InitFurnitureList = function(slot0)
	slot0.contextData.filterPanel:setFilterData(slot0:GetData())
	slot0.contextData.filterPanel:filter()
	slot0:OnFilterDone()
end

slot0.GetData = function(slot0)
	slot1 = {}
	slot2 = slot0.dorm
	slot2 = slot2:GetPurchasedFurnitures()

	slot3 = function(slot0)
		return pg.furniture_shop_template[slot0.id] and not slot0:isNotForSale() and (not slot0:isForActivity() or uv0[slot0.id]) and not not slot0:inTime()
	end

	slot4 = function(slot0)
		if not getInputText(uv0.searchInput) or slot1 == "" then
			return true
		else
			return slot0:isMatchSearchKey(slot1)
		end
	end

	slot5 = function(slot0)
		if uv1(uv0[slot0] or Furniture.New({
			id = slot0
		})) and uv2(slot1) then
			table.insert(uv3, slot1)
		end
	end

	if slot0.pageType == 5 then
		for slot9, slot10 in ipairs(pg.furniture_data_template.get_id_list_by_tag[7]) do
			slot5(slot10)
		end
	else
		slot7 = pg.furniture_data_template.get_id_list_by_type

		for slot11, slot12 in ipairs(uv0(slot0.pageType)) do
			slot13 = ipairs
			slot14 = slot7[slot12] or {}

			for slot16, slot17 in slot13(slot14) do
				slot5(slot17)
			end
		end
	end

	return slot1
end

slot0.OnInitItem = function(slot0, slot1)
	slot2 = BackYardFurnitureCard.New(slot1)

	onButton(slot0, slot2._go, function ()
		if uv0.furniture:canPurchase() then
			uv1.contextData.furnitureMsgBox:ExecuteAction("SetUp", uv0.furniture, uv1.dorm, uv1.player)
		end
	end, SFX_PANEL)

	slot0.cards[slot1] = slot2
end

slot0.OnUpdateItem = function(slot0, slot1, slot2)
	if not slot0.cards[slot2] then
		slot0:OnInitItem(slot2)

		slot3 = slot0.cards[slot2]
	end

	slot3:Update(slot0.displays[slot1 + 1])
end

slot0.OnDestroy = function(slot0)
	for slot4, slot5 in pairs(slot0.cards) do
		slot5:Clear()
	end
end

return slot0
