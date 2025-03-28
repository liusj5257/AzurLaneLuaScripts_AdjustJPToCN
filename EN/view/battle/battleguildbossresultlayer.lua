slot0 = class("BattleGuildBossResultLayer", import(".BattleResultLayer"))

slot0.showRightBottomPanel = function(slot0)
	uv0.super.showRightBottomPanel(slot0)
	SetActive(slot0._rightBottomPanel, false)

	slot1 = slot0._blurConatiner:Find("activitybossConfirmPanel")

	setActive(slot1, true)
	onButton(slot0, slot1:Find("statisticsBtn"), function ()
		triggerButton(uv0._statisticsBtn)
	end, SFX_PANEL)
	setText(slot1:Find("confirmBtn/Image"), i18n("text_confirm"))
	onButton(slot0, slot1:Find("confirmBtn"), function ()
		triggerButton(uv0._confirmBtn)
	end, SFX_CONFIRM)
	setText(slot1:Find("confirmBtn/Image"), i18n("text_confirm"))
end

slot0.didEnter = function(slot0)
	uv0.super.didEnter(slot0)
	slot0:setPoint()
end

slot0.setGradeLabel = function(slot0)
	setActive(slot0:findTF("grade/Xyz/bg13"), false)
	LoadImageSpriteAsync("battlescore/grade_label_clear", slot0:findTF("grade/Xyz/bg14"), false)
end

slot0.rankAnimaFinish = function(slot0)
	setActive(slot0._conditionBGNormal, false)
	setActive(slot0._conditionBGContribute, true)
	slot0:setCondition(i18n("battle_result_total_damage"), slot0.contextData.statistics.specificDamage, COLOR_BLUE)
	slot0:setCondition(i18n("battle_result_contribution"), slot0._contributionPoint, COLOR_YELLOW)
	table.insert(slot0._delayLeanList, LeanTween.delayedCall(1, System.Action(function ()
		uv0._stateFlag = uv1.STATE_REPORTED

		SetActive(uv0:findTF("jieuan01/tips", uv0._bg), true)
	end)).id)

	slot0._stateFlag = uv0.STATE_REPORT
end

slot0.setCondition = function(slot0, slot1, slot2, slot3)
	slot4 = cloneTplTo(slot0._conditionContributeTpl, slot0._conditionContainer)

	setActive(slot4, false)

	slot5 = nil
	slot4:Find("text"):GetComponent(typeof(Text)).text = setColorStr(slot1, "#FFFFFFFF")
	slot4:Find("value"):GetComponent(typeof(Text)).text = setColorStr(slot2, slot3)

	if slot0._conditionContainer.childCount - 1 > 0 then
		table.insert(slot0._delayLeanList, LeanTween.delayedCall(uv0.CONDITIONS_FREQUENCE * slot8, System.Action(function ()
			setActive(uv0, true)
		end)).id)
	else
		setActive(slot4, true)
	end
end

slot0.setActId = function(slot0, slot1)
end

slot0.showRewardInfo = function(slot0)
	slot0._stateFlag = uv0.STATE_REWARD

	SetActive(slot0:findTF("jieuan01/tips", slot0._bg), false)
	slot0:displayBG()
end

slot0.setPoint = function(slot0)
	slot0._contributionPoint = 0
	slot1 = pg.guildset.guild_damage_resource.key_value

	for slot5, slot6 in ipairs(slot0.contextData.drops) do
		if slot6.configId == slot1 then
			slot0._contributionPoint = slot6.count
		end
	end

	setActive(slot0:findTF("blur_container/activitybossConfirmPanel/playAgain"), false)
end

slot0.displayShips = function(slot0)
	slot1 = {}

	for slot6, slot7 in ipairs(slot0.shipVOs) do
		slot1[slot7.id] = slot7
	end

	slot3 = slot0.contextData.statistics

	for slot7, slot8 in ipairs(slot2) do
		if slot3[slot8.id] then
			slot3[slot8.id].vo = slot8
		end
	end

	slot4, slot5 = nil
	slot5 = (not slot3.mvpShipID or slot3.mvpShipID == 0 or slot3[slot3.mvpShipID].output) and 0
	slot0._atkFuncs = {}
	slot7, slot8 = nil

	SetActive(slot0._atkToggle, #slot0.contextData.oldMainShips > 6)

	if #slot6 > 6 then
		onToggle(slot0, slot0._atkToggle, function (slot0)
			SetActive(uv0._atkContainer, slot0)
			SetActive(uv0._atkContainerNext, not slot0)

			if slot0 then
				uv0:skipAtkAnima(uv0._atkContainerNext)
			else
				uv0:skipAtkAnima(uv0._atkContainer)
			end
		end, SFX_PANEL)
	end

	slot9 = {}
	slot10 = {}

	for slot14, slot15 in ipairs(slot6) do
		slot16 = slot1[slot15.id] or slot15

		if slot3[slot15.id] then
			slot18 = table.contains(TeamType.SubShipType, ys.Battle.BattleDataFunction.GetPlayerShipTmpDataFromID(slot15.configId).type)
			slot19, slot20 = nil
			slot21 = 0

			if slot14 > 6 then
				slot20 = slot0._atkContainerNext
				slot21 = 7
			else
				slot20 = slot0._atkContainer
				slot21 = 1
			end

			slot19 = cloneTplTo(slot0._atkTpl, slot20)
			slot22 = slot19.localPosition
			slot22.x = slot22.x + (slot14 - slot21) * 74
			slot22.y = slot22.y + (slot14 - slot21) * -124
			slot19.localPosition = slot22
			slot23 = findTF(slot19, "result/stars")
			slot24 = findTF(slot19, "result/stars/star_tpl")
			slot25 = slot15:getStar()
			slot26 = slot15:getMaxStar()

			while slot26 > 0 do
				SetActive(cloneTplTo(slot24, slot23):Find("empty"), slot25 < slot26)
				SetActive(slot27:Find("star"), slot26 <= slot25)

				slot26 = slot26 - 1
			end

			slot0:findTF("result/mask/icon", slot19):GetComponent(typeof(Image)).sprite = LoadSprite("herohrzicon/" .. slot15:getPainting())

			setImageSprite(slot0:findTF("result/type", slot19), GetSpriteFromAtlas("shiptype", shipType2print(slot15:getShipType())), true)
			slot0:setAtkAnima(slot19, slot20, slot3[slot15.id].output / slot5, slot5, slot4 and slot15.id == slot4.id, slot3[slot15.id].output, slot3[slot15.id].kill_count)

			slot31 = nil
			slot32 = false

			if slot4 and slot15.id == slot4.id then
				slot32 = true
				slot0.mvpShipVO = slot15
				slot33, slot34, slot35 = nil

				if slot0.contextData.score > 1 then
					slot33, slot35, slot34 = ShipWordHelper.GetWordAndCV(slot0.mvpShipVO.skinId, ShipWordHelper.WORD_TYPE_MVP, nil, , slot0.mvpShipVO:getCVIntimacy())
				else
					slot33, slot35, slot34 = ShipWordHelper.GetWordAndCV(slot0.mvpShipVO.skinId, ShipWordHelper.WORD_TYPE_LOSE)
				end

				if slot35 then
					slot0:stopVoice()

					slot36 = pg.CriMgr.GetInstance()

					slot36:PlaySoundEffect_V3(slot35, function (slot0)
						uv0._currentVoice = slot0
					end)
				end
			end

			if slot15.id == slot3._flagShipID then
				slot0.flagShipVO = slot15
			end

			slot33 = nil

			if slot0.expBuff or slot0.shipBuff and slot0.shipBuff[slot15:getGroupId()] then
				slot33 = slot0.expBuff and slot0.expBuff:getConfig("name") or slot34 and i18n("Word_Ship_Exp_Buff")
			end

			slot36 = nil

			if not slot18 then
				table.insert(slot0._shipResultCardList, BattleResultShipCard.New(cloneTplTo(slot0._extpl, slot0._expContainer)))

				if slot8 then
					slot8:ConfigCallback(function ()
						uv0:Play()
					end)
				else
					slot36:Play()
				end

				slot8 = slot36
			else
				table.insert(slot0._subShipResultCardList, BattleResultShipCard.New(cloneTplTo(slot0._extpl, slot0._subExpContainer)))

				if not slot7 then
					slot0._subFirstExpCard = slot36
				else
					slot7:ConfigCallback(function ()
						uv0:Play()
					end)
				end

				slot7 = slot36
			end

			slot36:SetShipVO(slot15, slot16, slot32, slot33)
		end
	end

	if slot8 then
		slot8:ConfigCallback(function ()
			uv0._stateFlag = uv1.STATE_DISPLAYED

			if not uv0._subFirstExpCard then
				uv0:skip()
			end
		end)
	end

	if slot7 then
		slot7:ConfigCallback(function ()
			uv0._stateFlag = uv1.STATE_SUB_DISPLAYED

			uv0:skip()
		end)
	end
end

return slot0
