slot0 = class("BattleDodgemResultLayer", import(".BattleResultLayer"))

slot0.didEnter = function(slot0)
	setText(slot0._levelText, pg.expedition_data_template[slot0.contextData.stageId].name)
	setText(findTF(slot0._conditions, "bg17"), i18n("battle_result_targets"))

	slot3 = rtf(slot0._grade)
	slot0._gradeUpperLeftPos = slot3.localPosition
	slot3.localPosition = Vector3(0, 25, 0)
	slot4 = pg.UIMgr.GetInstance()

	slot4:BlurPanel(slot0._tf)

	slot0._grade.transform.localScale = Vector3(1.5, 1.5, 0)
	slot4 = LeanTween.scale(slot0._grade, Vector3(0.88, 0.88, 1), uv0.DURATION_WIN_SCALE)

	slot4:setOnComplete(System.Action(function ()
		SetActive(uv0._levelText, true)
		uv0:rankAnimaFinish()
	end))

	slot4 = slot0._tf
	slot4:GetComponent(typeof(Image)).color = Color.New(0, 0, 0, 0.5)
	slot0._stateFlag = BattleResultLayer.STATE_RANK_ANIMA

	onButton(slot0, slot0._skipBtn, function ()
		uv0:skip()
	end, SFX_CONFIRM)
end

slot0.rankAnimaFinish = function(slot0)
	SetActive(slot0:findTF("main/conditions"), true)
	SetActive(slot0._conditionBGNormal, false)
	SetActive(slot0._conditionBGContribute, true)

	slot2 = slot0.contextData.statistics.dodgemResult

	slot0:setCondition(i18n("battle_result_total_score"), slot2.score, COLOR_BLUE)
	slot0:setCondition(i18n("battle_result_max_combo"), slot2.maxCombo, COLOR_YELLOW)
	table.insert(slot0._delayLeanList, LeanTween.delayedCall(1, System.Action(function ()
		uv0._stateFlag = uv1.STATE_REPORTED

		SetActive(uv0:findTF("jieuan01/tips", uv0._bg), true)
	end)).id)

	slot0._stateFlag = uv0.STATE_REPORT
end

slot0.displayBG = function(slot0)
	LeanTween.moveX(rtf(slot0._conditions), 1300, uv0.DURATION_MOVE)
	LeanTween.scale(slot0._grade, Vector3(0.6, 0.6, 0), uv0.DURATION_MOVE)
	LeanTween.moveLocal(go(rtf(slot0._grade)), slot0._gradeUpperLeftPos, uv0.DURATION_MOVE):setOnComplete(System.Action(function ()
		uv0:showPainting()
	end))
	setActive(slot0:findTF("jieuan01/Bomb", slot0._bg), false)
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

slot0.showPainting = function(slot0)
	slot1, slot2 = nil

	SetActive(slot0._painting, true)

	slot0.paintingName = "yanzhan"

	setPaintingPrefabAsync(slot0._painting, slot0.paintingName, "jiesuan", function ()
		if findTF(uv0._painting, "fitter").childCount > 0 then
			ShipExpressionHelper.SetExpression(findTF(uv0._painting, "fitter"):GetChild(0), uv0.paintingName, "win_mvp")
		end
	end)
	SetActive(slot0._failPainting, false)

	if slot0.contextData.score > 1 then
		slot1, slot2 = Ship.getWords(205020, "win_mvp")
	else
		slot1, slot2 = Ship.getWords(205020, "lose")
	end

	setText(slot0._chat:Find("Text"), slot1)

	if CHAT_POP_STR_LEN < #slot0._chat:Find("Text"):GetComponent(typeof(Text)).text then
		slot3.alignment = TextAnchor.MiddleLeft
	else
		slot3.alignment = TextAnchor.MiddleCenter
	end

	SetActive(slot0._chat, true)

	slot0._chat.transform.localScale = Vector3.New(0, 0, 0)
	slot4 = LeanTween.moveX(rtf(slot0._painting), 50, 0.1)

	slot4:setOnComplete(System.Action(function ()
		LeanTween.scale(rtf(uv0._chat.gameObject), Vector3.New(1, 1, 1), 0.1):setEase(LeanTweenType.easeOutBack)
	end))

	slot0._stateFlag = BattleResultLayer.STATE_DISPLAYED
end

slot0.skip = function(slot0)
	if slot0._stateFlag == BattleResultLayer.STATE_REPORTED then
		slot0:displayBG()
	elseif slot0._stateFlag == BattleResultLayer.STATE_DISPLAYED then
		slot0:emit(BattleResultMediator.ON_BACK_TO_LEVEL_SCENE)
	end
end

slot0.onBackPressed = function(slot0)
	triggerButton(slot0._skipBtn)
end

slot0.willExit = function(slot0)
	LeanTween.cancel(go(slot0._tf))
	pg.UIMgr.GetInstance():UnblurPanel(slot0._tf)
	pg.CameraFixMgr.GetInstance():disconnect(slot0.camEventId)
end

return slot0
