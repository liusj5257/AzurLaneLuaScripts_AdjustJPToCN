slot0 = class("CollectionScene", import("..base.BaseUI"))
slot0.SHOW_DETAIL = "event show detail"
slot0.GET_AWARD = "event get award"
slot0.ACTIVITY_OP = "event activity op"
slot0.BEGIN_STAGE = "event begin state"
slot0.ON_INDEX = "event on index"
slot0.UPDATE_RED_POINT = "CollectionScene:UPDATE_RED_POINT"
slot0.ShipOrderAsc = false
slot0.ShipIndex = {
	typeIndex = ShipIndexConst.TypeAll,
	campIndex = ShipIndexConst.CampAll,
	rarityIndex = ShipIndexConst.RarityAll,
	collExtraIndex = ShipIndexConst.CollExtraAll
}
slot0.ShipIndexData = {
	customPanels = {
		typeIndex = {
			blueSeleted = true,
			mode = CustomIndexLayer.Mode.AND,
			options = ShipIndexConst.TypeIndexs,
			names = ShipIndexConst.TypeNames
		},
		campIndex = {
			blueSeleted = true,
			mode = CustomIndexLayer.Mode.AND,
			options = ShipIndexConst.CampIndexs,
			names = ShipIndexConst.CampNames
		},
		rarityIndex = {
			blueSeleted = true,
			mode = CustomIndexLayer.Mode.AND,
			options = ShipIndexConst.RarityIndexs,
			names = ShipIndexConst.RarityNames
		},
		collExtraIndex = {
			blueSeleted = true,
			mode = CustomIndexLayer.Mode.AND,
			options = ShipIndexConst.CollExtraIndexs,
			names = ShipIndexConst.CollExtraNames
		}
	},
	groupList = {
		{
			dropdown = false,
			titleENTxt = "indexsort_indexeng",
			titleTxt = "indexsort_index",
			tags = {
				"typeIndex"
			}
		},
		{
			dropdown = false,
			titleENTxt = "indexsort_campeng",
			titleTxt = "indexsort_camp",
			tags = {
				"campIndex"
			}
		},
		{
			dropdown = false,
			titleENTxt = "indexsort_rarityeng",
			titleTxt = "indexsort_rarity",
			tags = {
				"rarityIndex"
			}
		},
		{
			dropdown = false,
			titleENTxt = "indexsort_indexeng",
			titleTxt = "indexsort_extraindex",
			tags = {
				"collExtraIndex"
			}
		}
	}
}
slot0.SHIPCOLLECTION_INDEX = 1
slot0.MANGA_INDEX = 4
slot0.GALLERY_INDEX = 5
slot0.MUSIC_INDEX = 6

slot0.isDefaultStatus = function(slot0)
	return uv0.ShipIndex.typeIndex == ShipIndexConst.TypeAll and (uv0.ShipIndex.campIndex == ShipIndexConst.CampAll or slot0.contextData.toggle == 1 and slot0.contextData.cardToggle == 2) and uv0.ShipIndex.rarityIndex == ShipIndexConst.RarityAll and uv0.ShipIndex.collExtraIndex == ShipIndexConst.CollExtraAll
end

slot0.getUIName = function(slot0)
	return "CollectionUI"
end

slot0.setShipGroups = function(slot0, slot1)
	slot0.shipGroups = slot1
end

slot0.setAwards = function(slot0, slot1)
	slot0.awards = slot1
end

slot0.setCollectionRate = function(slot0, slot1, slot2, slot3)
	slot0.rate = slot1
	slot0.count = slot2
	slot0.totalCount = slot3
end

slot0.setLinkCollectionCount = function(slot0, slot1)
	slot0.linkCount = slot1
end

slot0.setPlayer = function(slot0, slot1)
	slot0.player = slot1
end

slot0.setProposeList = function(slot0, slot1)
	slot0.proposeList = slot1
end

slot0.init = function(slot0)
	slot0:initEvents()

	slot0.blurPanel = slot0:findTF("blur_panel")
	slot0.top = slot0:findTF("blur_panel/adapt/top")
	slot0.leftPanel = slot0:findTF("blur_panel/adapt/left_length")
	slot0.UIMgr = pg.UIMgr.GetInstance()
	slot0.backBtn = findTF(slot0.top, "back_btn")
	slot0.contextData.toggle = slot0.contextData.toggle or 2
	slot0.toggles = {
		slot0:findTF("frame/tagRoot/card", slot0.leftPanel),
		slot0:findTF("frame/tagRoot/display", slot0.leftPanel),
		slot0:findTF("frame/tagRoot/trans", slot0.leftPanel),
		slot0:findTF("frame/tagRoot/manga", slot0.leftPanel),
		slot0:findTF("frame/tagRoot/gallery", slot0.leftPanel),
		slot0:findTF("frame/tagRoot/music", slot0.leftPanel)
	}
	slot0.toggleUpdates = {
		"initCardPanel",
		"initDisplayPanel",
		"initCardPanel",
		"initMangaPanel",
		"initGalleryPanel",
		"initMusicPanel"
	}
	slot0.cardList = slot0:findTF("main/list_card/scroll"):GetComponent("LScrollRect")

	slot0.cardList.onInitItem = function(slot0)
		uv0:onInitCard(slot0)
	end

	slot0.cardList.onUpdateItem = function(slot0, slot1)
		uv0:onUpdateCard(slot0, slot1)
	end

	slot0.cardList.onReturnItem = function(slot0, slot1)
		uv0:onReturnCard(slot0, slot1)
	end

	slot0.cardItems = {}
	slot0.cardContent = slot0:findTF("ships", slot0.cardList)
	slot0.contextData.cardToggle = slot0.contextData.cardToggle or 1
	slot0.cardToggleGroup = slot0:findTF("main/list_card/types")
	slot0.cardToggles = {
		slot0:findTF("char", slot0.cardToggleGroup),
		slot0:findTF("link", slot0.cardToggleGroup),
		slot0:findTF("blueprint", slot0.cardToggleGroup),
		slot0:findTF("meta", slot0.cardToggleGroup)
	}
	slot0.cardList.decelerationRate = 0.07
	slot0.bonusPanel = slot0:findTF("bonus_panel")
	slot0.charTpl = slot0:getTpl("chartpl")
	slot0.tip = slot0:findTF("tip", slot0.toggles[2])
	slot0.favoriteVOs = {}

	for slot5, slot6 in ipairs(pg.storeup_data_template.all) do
		table.insert(slot0.favoriteVOs, Favorite.New({
			id = slot5
		}))
	end

	slot0.memoryGroups = _.map(pg.memory_group.all, function (slot0)
		return pg.memory_group[slot0]
	end)
	slot0.memories = nil
	slot0.memoryList = slot0:findTF("main/list_memory"):GetComponent("LScrollRect")

	slot0.memoryList.onInitItem = function(slot0)
		uv0:onInitMemory(slot0)
	end

	slot0.memoryList.onUpdateItem = function(slot0, slot1)
		uv0:onUpdateMemory(slot0, slot1)
	end

	slot0.memoryList.onReturnItem = function(slot0, slot1)
		uv0:onReturnMemory(slot0, slot1)
	end

	slot0.memoryViewport = slot0:findTF("main/list_memory/viewport")
	slot0.memoriesGrid = slot0:findTF("main/list_memory/viewport/memories"):GetComponent(typeof(GridLayoutGroup))
	slot0.memoryItems = {}
	slot0.memoryMask = slot0:findTF("blur_panel/adapt/story_mask")

	setActive(slot0:findTF("memory", slot0.memoryList), false)
	setActive(slot0.memoryMask, false)

	slot0.memoryTogGroup = slot0:findTF("memory", slot0.top)

	setActive(slot0.memoryTogGroup, false)

	slot0.memoryToggles = {
		slot0:findTF("memory/0", slot0.top),
		slot0:findTF("memory/1", slot0.top),
		slot0:findTF("memory/2", slot0.top),
		slot0:findTF("memory/3", slot0.top)
	}
	slot0.memoryFilterIndex = {
		true,
		true,
		true
	}
	slot0.galleryPanelContainer = slot0:findTF("main/GalleryContainer")
	slot0.musicPanelContainer = slot0:findTF("main/MusicContainer")
	slot0.mangaPanelContainer = slot0:findTF("main/MangaContainer")

	slot0:initIndexPanel()
end

slot0.didEnter = function(slot0)
	onButton(slot0, slot0.backBtn, function ()
		uv0.contextData.cardScrollValue = 0

		uv0:emit(uv1.ON_BACK)
	end, SFX_CANCEL)

	slot0.helpBtn = slot0:findTF("help_btn", slot0.leftPanel)

	onButton(slot0, slot0.helpBtn, function ()
		if uv0.contextData.toggle == uv1.MUSIC_INDEX then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				type = MSGBOX_TYPE_HELP,
				helps = pg.gametip.NewMusic_help.tip,
				weight = LayerWeightConst.THIRD_LAYER
			})
		else
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				type = MSGBOX_TYPE_HELP,
				helps = pg.gametip.collection_help.tip,
				weight = LayerWeightConst.THIRD_LAYER
			})
		end
	end, SFX_PANEL)

	slot1 = slot0:findTF("stamp", slot0.top)
	slot4 = getProxy(TaskProxy)

	setActive(slot1, slot4:mingshiTouchFlagEnabled())

	slot5 = function()
		getProxy(TaskProxy):dealMingshiTouchFlag(8)
	end

	slot6 = SFX_CONFIRM

	onButton(slot0, slot1, slot5, slot6)

	for slot5, slot6 in ipairs(slot0.toggles) do
		if PLATFORM_CODE == PLATFORM_CH and (slot5 == 1 or slot5 == 3) and LOCK_COLLECTION then
			setActive(slot6, false)
		else
			onToggle(slot0, slot6, function (slot0)
				if slot0 then
					if uv0.contextData.toggle ~= uv1 then
						if uv0.contextData.toggle == uv2.SHIPCOLLECTION_INDEX then
							setActive(uv0.helpBtn, false)

							if uv0.bulinTip then
								uv0.bulinTip.buffer:Hide()
							end

							if uv0.contextData.cardToggle == 1 then
								uv0.contextData.cardScrollValue = uv0.cardList.value
							end
						end

						uv0.contextData.toggle = uv1

						if uv0.toggleUpdates[uv1] then
							uv0[uv0.toggleUpdates[uv1]](uv0)
							uv0:calFavoriteRate()
						end
					end

					if uv1 == uv2.SHIPCOLLECTION_INDEX then
						setActive(uv0.helpBtn, true)

						if not getProxy(SettingsProxy):IsShowCollectionHelp() then
							triggerButton(uv0.helpBtn)
							slot1:SetCollectionHelpFlag(true)
						end

						if uv0.bulinTip then
							uv0.bulinTip.buffer:Show()
						else
							uv0.bulinTip = AprilFoolBulinSubView.ShowAprilFoolBulin(uv0, uv0:findTF("main"))
						end
					end

					if uv1 ~= uv2.MUSIC_INDEX then
						if uv0.musicView and uv0.musicView:CheckState(BaseSubView.STATES.INITED) then
							uv0.musicView:tryPauseMusic()
							uv0.musicView:closeAlbumListPanel()
						end

						pg.BgmMgr.GetInstance():ContinuePlay()
					elseif uv1 == uv2.MUSIC_INDEX then
						pg.BgmMgr.GetInstance():StopPlay()

						if uv0.musicView and uv0.musicView:CheckState(BaseSubView.STATES.INITED) then
							uv0.musicView:tryPlayMusic()
						end
					end

					if uv1 ~= uv2.GALLERY_INDEX and uv0.galleryView and uv0.galleryView:CheckState(BaseSubView.STATES.INITED) then
						uv0.galleryView:closePicPanel()
					end
				end
			end, SFX_UI_TAG)
		end
	end

	for slot5, slot6 in ipairs(slot0.memoryToggles) do
		onToggle(slot0, slot6, function (slot0)
			if slot0 then
				if uv0 == 1 then
					uv1.memoryFilterIndex = {
						true,
						true,
						true
					}
				else
					for slot4 in ipairs(uv1.memoryFilterIndex) do
						uv1.memoryFilterIndex[slot4] = uv0 - 1 == slot4
					end
				end

				uv1:memoryFilter()
			end
		end, SFX_UI_TAG)
	end

	slot0.contextData.toggle = -1

	triggerToggle(slot0.toggles[slot0.contextData.toggle], true)

	if slot0.contextData.memoryGroup and pg.memory_group[slot3] then
		slot0:showSubMemories(pg.memory_group[slot3])
	else
		triggerToggle(slot0.memoryToggles[1], true)
	end

	for slot7, slot8 in ipairs(slot0.cardToggles) do
		triggerToggle(slot8, slot0.contextData.cardToggle == slot7)
		onToggle(slot0, slot8, function (slot0)
			if slot0 and uv0.contextData.cardToggle ~= uv1 then
				if uv0.contextData.cardToggle == 1 then
					uv0.contextData.cardScrollValue = uv0.cardList.value
				end

				uv0.contextData.cardToggle = uv1

				uv0:initCardPanel()
				uv0:calFavoriteRate()
			end
		end)
	end

	slot0:calFavoriteRate()

	slot4 = pg.UIMgr.GetInstance()

	slot4:OverlayPanelPB(slot0.blurPanel, {
		groupName = LayerWeightConst.GROUP_COLLECTION
	})
	onButton(slot0, slot0.bonusPanel, function ()
		uv0:closeBonus()
	end, SFX_PANEL)
end

slot0.updateCollectNotices = function(slot0, slot1)
	setActive(slot0.tip, slot1)
	setActive(slot0:findTF("tip", slot0.toggles[uv0.GALLERY_INDEX]), getProxy(AppreciateProxy):isGalleryHaveNewRes())
	setActive(slot0:findTF("tip", slot0.toggles[uv0.MUSIC_INDEX]), getProxy(AppreciateProxy):isMusicHaveNewRes())
	setActive(slot0:findTF("tip", slot0.toggles[uv0.MANGA_INDEX]), getProxy(AppreciateProxy):isMangaHaveNewRes())
end

slot0.calFavoriteRate = function(slot0)
	slot1 = slot0.contextData.toggle == 1 and slot0.contextData.cardToggle == 2

	setActive(slot0:findTF("total/char", slot0.top), not slot1)
	setActive(slot0:findTF("total/link", slot0.top), slot1)
	setText(slot0:findTF("total/char/rate/Text", slot0.top), slot0.rate * 100 .. "%")
	setText(slot0:findTF("total/char/count/Text", slot0.top), slot0.count .. "/" .. slot0.totalCount)
	setText(slot0:findTF("total/link/count/Text", slot0.top), slot0.linkCount)
end

slot0.initCardPanel = function(slot0)
	GetSpriteFromAtlasAsync("ui/share/index_atlas", slot0:isDefaultStatus() and "shaixuan_off" or "shaixuan_on", function (slot0)
		setImageSprite(uv0.indexBtn, slot0, true)
	end)

	if slot0.contextData.toggle == 1 then
		setActive(slot0.cardToggleGroup, true)
		slot0:cardFilter()
	elseif slot0.contextData.toggle == 3 then
		setActive(slot0.cardToggleGroup, false)
		slot0:transFilter()
	end

	table.sort(slot0.codeShips, function (slot0, slot1)
		return slot0.index_id < slot1.index_id
	end)
	slot0.cardList:SetTotalCount(#slot0.codeShips, slot0.contextData.cardScrollValue or 0)
end

slot0.initIndexPanel = function(slot0)
	slot0.indexBtn = slot0:findTF("index_button", slot0.top)

	onButton(slot0, slot0.indexBtn, function ()
		slot0 = Clone(uv0.ShipIndexData)

		if uv1.contextData.toggle == 1 and uv1.contextData.cardToggle == 2 then
			slot0.customPanels.campIndex = nil
			slot0.groupList[2] = nil
		end

		slot0.indexDatas = Clone(uv0.ShipIndex)

		slot0.callback = function(slot0)
			uv0.ShipIndex.typeIndex = slot0.typeIndex

			if slot0.campIndex then
				uv0.ShipIndex.campIndex = slot0.campIndex
			end

			uv0.ShipIndex.rarityIndex = slot0.rarityIndex
			uv0.ShipIndex.collExtraIndex = slot0.collExtraIndex

			uv1:initCardPanel()
		end

		uv1:emit(uv0.ON_INDEX, slot0)
	end, SFX_PANEL)
end

slot0.onInitCard = function(slot0, slot1)
	if slot0.exited then
		return
	end

	slot2 = CollectionShipCard.New(slot1)

	onButton(slot0, slot2.go, function ()
		if not uv0.isClicked then
			uv0.isClicked = true

			LeanTween.delayedCall(0.2, System.Action(function ()
				uv0.isClicked = false

				if not uv1:getIsInited() then
					return
				end

				if uv1.state == ShipGroup.STATE_UNLOCK then
					uv0.contextData.cardScrollValue = uv0.cardList.value

					uv0:emit(uv2.SHOW_DETAIL, uv1.showTrans, uv1.shipGroup.id)
				elseif uv1.state == ShipGroup.STATE_NOTGET then
					if uv1.showTrans == true and uv1.shipGroup.trans == true then
						return
					end

					if uv1.config then
						uv0:showObtain(uv1.config.description, uv1.shipGroup:getShipConfigId())
					end
				end
			end))
		end
	end, SOUND_BACK)

	slot0.cardItems[slot1] = slot2
end

slot0.showObtain = function(slot0, slot1, slot2)
	slot3 = {
		type = MSGBOX_TYPE_OBTAIN,
		shipId = slot2,
		list = slot1,
		mediatorName = CollectionMediator.__cname
	}

	if PLATFORM_CODE == PLATFORM_CH and HXSet.isHx() then
		slot3.unknown_small = true
	end

	slot0.contextData.cardScrollValue = slot0.cardList.value

	pg.MsgboxMgr.GetInstance():ShowMsgBox(slot3)
end

slot0.skipIn = function(slot0, slot1, slot2)
	slot0.contextData.displayGroupId = slot2

	triggerToggle(slot0.toggles[slot1], true)
end

slot0.onUpdateCard = function(slot0, slot1, slot2)
	if slot0.exited then
		return
	end

	if not slot0.cardItems[slot2] then
		slot0:onInitCard(slot2)

		slot3 = slot0.cardItems[slot2]
	end

	if not slot0.codeShips[slot1 + 1] then
		return
	end

	slot6 = false

	if slot5.group then
		slot6 = slot0.proposeList[slot5.group.id]
	end

	slot3:update(slot5.code, slot5.group, slot5.showTrans, slot6, slot5.id)
end

slot0.onReturnCard = function(slot0, slot1, slot2)
	if slot0.exited then
		return
	end

	if slot0.cardItems[slot2] then
		slot3:clear()
	end
end

slot0.cardFilter = function(slot0)
	slot0.codeShips = {}
	slot1 = _.filter(pg.ship_data_group.all, function (slot0)
		return pg.ship_data_group[slot0].handbook_type == uv0.contextData.cardToggle - 1
	end)

	table.sort(slot1)

	for slot5, slot6 in ipairs(slot1) do
		if ShipIndexConst.filterByType(slot0.shipGroups[pg.ship_data_group[slot6].group_type] or ShipGroup.New({
			id = slot7.group_type
		}), uv0.ShipIndex.typeIndex) and (slot0.contextData.cardToggle == 2 or ShipIndexConst.filterByCamp(slot8, uv0.ShipIndex.campIndex)) and slot0.contextData.cardToggle == 4 == Nation.IsMeta(ShipGroup.getDefaultShipConfig(slot7.group_type).nationality) and ShipIndexConst.filterByRarity(slot8, uv0.ShipIndex.rarityIndex) and ShipIndexConst.filterByCollExtra(slot8, uv0.ShipIndex.collExtraIndex) then
			slot0.codeShips[#slot0.codeShips + 1] = {
				showTrans = false,
				id = slot6,
				code = slot6 - (slot0.contextData.cardToggle - 1) * 10000,
				group = slot0.shipGroups[slot7.group_type],
				index_id = slot7.index_id
			}
		end
	end
end

slot0.transFilter = function(slot0)
	slot0.codeShips = {}
	slot1 = _.filter(pg.ship_data_group.all, function (slot0)
		return pg.ship_data_group[slot0].handbook_type == 0
	end)

	table.sort(slot1)

	for slot5, slot6 in ipairs(slot1) do
		if pg.ship_data_trans[pg.ship_data_group[slot6].group_type] and ShipIndexConst.filterByType(slot0.shipGroups[slot7.group_type] or ShipGroup.New({
			remoulded = true,
			id = slot7.group_type
		}), uv0.ShipIndex.typeIndex) and ShipIndexConst.filterByCamp(slot8, uv0.ShipIndex.campIndex) and ShipIndexConst.filterByRarity(slot8, uv0.ShipIndex.rarityIndex) and ShipIndexConst.filterByCollExtra(slot8, uv0.ShipIndex.collExtraIndex) then
			slot0.codeShips[#slot0.codeShips + 1] = {
				showTrans = true,
				id = slot6,
				code = 3000 + slot6,
				group = slot8.trans and slot8 or nil,
				index_id = slot7.index_id
			}
		end
	end
end

slot0.sortDisplay = function(slot0)
	table.sort(slot0.favoriteVOs, function (slot0, slot1)
		if slot0:getState(uv0.shipGroups, uv0.awards) == slot1:getState(uv0.shipGroups, uv0.awards) then
			return slot0.id < slot1.id
		else
			return slot2 < slot3
		end
	end)

	slot1 = 0
	slot2 = slot0.contextData.displayGroupId

	for slot6, slot7 in ipairs(slot0.favoriteVOs) do
		if slot7:containShipGroup(slot2) then
			slot1 = slot6

			break
		end
	end

	slot0.displayRect:SetTotalCount(#slot0.favoriteVOs, slot0.displayRect:HeadIndexToValue(slot1 - 1))
end

slot0.initDisplayPanel = function(slot0)
	if not slot0.isInitDisplay then
		slot0.isInitDisplay = true
		slot1 = slot0:findTF("main/list_display")
		slot0.displayRect = slot1:GetComponent("LScrollRect")
		slot0.displayRect.decelerationRate = 0.07

		slot0.displayRect.onInitItem = function(slot0)
			uv0:initFavoriteCard(slot0)
		end

		slot0.displayRect.onUpdateItem = function(slot0, slot1)
			uv0:updateFavoriteCard(slot0, slot1)
		end

		slot0.favoriteCards = {}
	end

	slot0:sortDisplay()
end

slot0.initFavoriteCard = function(slot0, slot1)
	if slot0.exited then
		return
	end

	slot2 = FavoriteCard.New(slot1, slot0.charTpl)

	onButton(slot0, slot2.awardTF, function ()
		if uv0.state == Favorite.STATE_AWARD then
			uv1:emit(uv2.GET_AWARD, uv0.favoriteVO.id, uv0.favoriteVO:getNextAwardIndex(uv0.awards))
		elseif uv0.state == Favorite.STATE_LOCK then
			pg.TipsMgr.GetInstance():ShowTips(i18n("collection_lock"))
		elseif uv0.state == Favorite.STATE_FETCHED then
			pg.TipsMgr.GetInstance():ShowTips(i18n("collection_fetched"))
		elseif uv0.state == Favorite.STATE_STATE_WAIT then
			pg.TipsMgr.GetInstance():ShowTips(i18n("collection_nostar"))
		end
	end, SFX_PANEL)
	onButton(slot0, slot2.box, function ()
		uv0:openBonus(uv1.favoriteVO)
	end, SFX_PANEL)

	slot0.favoriteCards[slot1] = slot2
end

slot0.updateFavoriteCard = function(slot0, slot1, slot2)
	if slot0.exited then
		return
	end

	if not slot0.favoriteCards[slot2] then
		slot0:initFavoriteCard(slot2)

		slot3 = slot0.favoriteCards[slot2]
	end

	slot3:update(slot0.favoriteVOs[slot1 + 1], slot0.shipGroups, slot0.awards)
end

slot0.openBonus = function(slot0, slot1)
	if not slot0.isInitBound then
		slot0.isInitBound = true
		slot0.boundName = findTF(slot0.bonusPanel, "frame/name/Text"):GetComponent(typeof(Text))
		slot0.progressSlider = findTF(slot0.bonusPanel, "frame/process"):GetComponent(typeof(Slider))
	end

	pg.UIMgr.GetInstance():BlurPanel(slot0.bonusPanel)
	setActive(slot0.bonusPanel, true)

	slot0.boundName.text = slot1:getConfig("name")
	slot2 = slot1:getConfig("award_display")

	for slot7, slot8 in ipairs(slot1:getConfig("level")) do
		slot10 = findTF(slot0.bonusPanel, "frame/awards/award" .. slot7)

		setText(findTF(slot10, "process"), slot8)
		setActive(findTF(slot10, "item_tpl/unfinish"), slot1:getAwardState(slot0.shipGroups, slot0.awards, slot7) == Favorite.STATE_WAIT)
		setActive(findTF(slot10, "item_tpl/get"), slot11 == Favorite.STATE_AWARD)
		setActive(findTF(slot10, "item_tpl/got"), slot11 == Favorite.STATE_FETCHED)
		setActive(findTF(slot10, "item_tpl/lock"), slot11 == Favorite.STATE_LOCK)
		setActive(findTF(slot10, "item_tpl/icon_bg"), slot11 ~= Favorite.STATE_LOCK)
		setActive(findTF(slot10, "item_tpl/bg"), slot11 ~= Favorite.STATE_LOCK)

		if slot2[slot7] then
			slot12 = {
				count = 0,
				type = slot9[1],
				id = slot9[2]
			}

			updateDrop(findTF(slot10, "item_tpl"), slot12)

			slot12.count = slot9[3]

			onButton(slot0, slot10, function ()
				uv0:emit(uv1.ON_DROP, uv2)
			end, SFX_PANEL)
		else
			GetOrAddComponent(slot10, typeof(Button)).onClick:RemoveAllListeners()
		end
	end

	slot0.progressSlider.value = slot1:getStarCount(slot0.shipGroups) / slot3[#slot3]
end

slot0.closeBonus = function(slot0)
	pg.UIMgr.GetInstance():UnblurPanel(slot0.bonusPanel, slot0._tf)
	setActive(slot0.bonusPanel, false)
end

slot0.showSubMemories = function(slot0, slot1)
	slot0.contextData.memoryGroup = slot1.id
	slot0.memories = _.map(slot1.memories, function (slot0)
		return pg.memory_template[slot0]
	end)

	for slot5 in ipairs(slot0.memories) do
		slot0.memories[slot5].index = slot5
	end

	slot0.memoryList:SetTotalCount(#slot0.memories, 0)
	setActive(slot0:findTF("memory", slot0.top), false)
end

slot1 = 3

slot0.return2MemoryGroup = function(slot0)
	slot0.contextData.memoryGroup = nil
	slot0.memories = nil
	slot2 = 0

	if slot0.contextData.memoryGroup then
		slot3 = 0

		for slot7, slot8 in ipairs(slot0.memoryGroups) do
			if slot8.id == slot1 then
				slot3 = slot7

				break
			end
		end

		if slot3 >= 0 then
			slot5 = slot0.memoriesGrid.cellSize.y + slot0.memoriesGrid.spacing.y
			slot2 = Mathf.Clamp01((slot5 * math.floor((slot3 - 1) / uv0) + slot0.memoryList.paddingFront) / (slot5 * math.ceil(#slot0.memoryGroups / uv0) - slot0.memoryViewport.rect.height))
		end
	end

	slot0.memoryList:SetTotalCount(#slot0.memoryGroups, slot2)
	setActive(slot0:findTF("memory", slot0.top), true)
end

slot0.initMemoryPanel = function(slot0)
	if getProxy(ActivityProxy):getActivityById(ActivityConst.QIXI_ACTIVITY_ID) and not slot2:isEnd() then
		slot4 = _.flatten(slot2:getConfig("config_data"))

		if getProxy(TaskProxy):getTaskById(slot4[#slot4]) and not slot7:isFinish() then
			slot8 = pg.NewStoryMgr.GetInstance()

			slot8:Play("HOSHO8", function ()
				uv0:emit(CollectionScene.ACTIVITY_OP, {
					cmd = 2,
					activity_id = uv1.id
				})
			end, true)
		end
	end

	slot0:memoryFilter()
end

slot0.onInitMemory = function(slot0, slot1)
	if slot0.exited then
		return
	end

	slot2 = MemoryCard.New(slot1)

	onButton(slot0, slot2.go, function ()
		if uv0.info then
			if uv0.isGroup then
				uv1:showSubMemories(uv0.info)
			elseif uv0.info.is_open == 1 or pg.NewStoryMgr.GetInstance():IsPlayed(uv0.info.story, true) then
				uv1:playMemory(uv0.info)
			end
		end
	end, SOUND_BACK)

	slot0.memoryItems[slot1] = slot2
end

slot0.onUpdateMemory = function(slot0, slot1, slot2)
	if slot0.exited then
		return
	end

	if not slot0.memoryItems[slot2] then
		slot0:onInitMemory(slot2)

		slot3 = slot0.memoryItems[slot2]
	end

	if slot0.memories then
		slot3:update(false, slot0.memories[slot1 + 1])
	else
		slot3:update(true, slot0.memoryGroups[slot1 + 1])
	end

	_.any({
		slot3.lock,
		slot3.normal,
		slot3.group
	}, function (slot0)
		if isActive(slot0) then
			uv0.go:GetComponent(typeof(Button)).targetGraphic = slot0:GetComponent(typeof(Image))
		end

		return slot1
	end)
end

slot0.onReturnMemory = function(slot0, slot1, slot2)
	if slot0.exited then
		return
	end

	if slot0.memoryItems[slot2] then
		slot3:clear()
	end
end

slot0.playMemory = function(slot0, slot1)
	if slot1.type == 1 then
		slot2 = findTF(slot0.memoryMask, "pic")

		if string.len(slot1.mask) > 0 then
			setActive(slot2, true)

			slot2:GetComponent(typeof(Image)).sprite = LoadSprite(slot1.mask)
		else
			setActive(slot2, false)
		end

		setActive(slot0.memoryMask, true)

		slot3 = pg.NewStoryMgr.GetInstance()

		slot3:Play(slot1.story, function ()
			setActive(uv0.memoryMask, false)
		end, true)
	elseif slot1.type == 2 then
		slot0:emit(uv0.BEGIN_STAGE, {
			memory = true,
			system = SYSTEM_PERFORM,
			stageId = pg.NewStoryMgr.GetInstance():StoryName2StoryId(slot1.story)
		})
	end
end

slot0.memoryFilter = function(slot0)
	slot0.memoryGroups = {}

	for slot4, slot5 in ipairs(pg.memory_group.all) do
		if slot0.memoryFilterIndex[pg.memory_group[slot5].type] then
			table.insert(slot0.memoryGroups, slot6)
		end
	end

	table.sort(slot0.memoryGroups, function (slot0, slot1)
		return slot0.id < slot1.id
	end)
	slot0.memoryList:SetTotalCount(#slot0.memoryGroups, 0)
end

slot0.willExit = function(slot0)
	if slot0.bulinTip then
		slot0.bulinTip:Destroy()

		slot0.bulinTip = nil
	end

	if slot0.tweens then
		cancelTweens(slot0.tweens)
	end

	pg.UIMgr.GetInstance():UnOverlayPanel(slot0.blurPanel, slot0._tf)

	if slot0.bonusPanel.gameObject.activeSelf then
		slot0:closeBonus()
	end

	Destroy(slot0.bonusPanel)

	slot0.bonusPanel = nil

	for slot4, slot5 in pairs(slot0.cardItems) do
		slot5:clear()
	end

	if slot0.resPanel then
		slot0.resPanel:exit()

		slot0.resPanel = nil
	end

	if slot0.galleryView then
		slot0.galleryView:Destroy()

		slot0.galleryView = nil
	end

	if slot0.musicView then
		slot0.musicView:Destroy()

		slot0.musicView = nil
	end

	if slot0.mangaView then
		slot0.mangaView:Destroy()

		slot0.mangaView = nil
	end
end

slot0.initGalleryPanel = function(slot0)
	if not slot0.galleryView then
		slot0.galleryView = GalleryView.New(slot0.galleryPanelContainer, slot0.event, slot0.contextData)

		slot0.galleryView:Reset()
		slot0.galleryView:Load()
	end
end

slot0.initMusicPanel = function(slot0)
	if not slot0.musicView then
		slot0.musicView = MusicCollectionView.New(slot0.musicPanelContainer, slot0.event, slot0.contextData)

		slot0.musicView:Reset()
		slot0.musicView:Load()
		pg.CriMgr.GetInstance():StopBGM()
	end
end

slot0.initMangaPanel = function(slot0)
	if not slot0.mangaView then
		slot0.mangaView = MangaView.New(slot0.mangaPanelContainer, slot0.event, slot0.contextData)

		slot0.mangaView:Reset()
		slot0.mangaView:Load()
	end
end

slot0.initEvents = function(slot0)
	slot0:bind(GalleryConst.OPEN_FULL_SCREEN_PIC_VIEW, function (slot0, slot1)
		uv0:emit(CollectionMediator.EVENT_OPEN_FULL_SCREEN_PIC_VIEW, slot1)
	end)
	slot0:bind(uv0.UPDATE_RED_POINT, function ()
		uv0:updateCollectNotices()
	end)
end

slot0.onBackPressed = function(slot0)
	pg.CriMgr.GetInstance():PlaySoundEffect_V3(SFX_CANCEL)

	if slot0.bonusPanel.gameObject.activeSelf then
		slot0:closeBonus()

		return
	end

	if slot0.galleryView then
		if slot0.galleryView:onBackPressed() == true then
			slot0.galleryView:Destroy()

			slot0.galleryView = nil
		else
			return
		end
	end

	if slot0.musicView then
		if slot0.musicView:onBackPressed() == true then
			slot0.musicView:Destroy()

			slot0.musicView = nil
		else
			return
		end
	end

	if slot0.mangaView then
		if slot0.mangaView:onBackPressed() == true then
			slot0.mangaView:Destroy()

			slot0.mangaView = nil
		else
			return
		end
	end

	triggerButton(slot0.backBtn)
end

return slot0
