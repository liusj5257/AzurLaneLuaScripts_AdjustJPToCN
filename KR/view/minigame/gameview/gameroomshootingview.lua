slot0 = class("GameRoomShootingView", import("..BaseMiniGameView"))
slot0.animTime = 0.3333333333333333
slot0.moveModulus = 120

slot0.getUIName = function(slot0)
	return "GameRoomShootingUI"
end

slot0.init = function(slot0)
	slot0.uiMGR = pg.UIMgr.GetInstance()
	slot0.blurPanel = slot0._tf:Find("noAdaptPanel/blur_panel")
	slot0.top = slot0.blurPanel:Find("top")
	slot0.backBtn = slot0.top:Find("back")
	slot0.scoreTF = slot0.top:Find("score/Text")

	setText(slot0.scoreTF, 0)

	slot0.bestScoreTF = slot0.top:Find("score_heightest/Text")
	slot0.ticketTF = slot0.top:Find("ticket/Text")
	slot0.helpBtn = slot0.top:Find("help_btn")

	setActive(slot0.helpBtn, false)

	slot0.sightTF = slot0.blurPanel:Find("MoveArea/Sight")

	setActive(slot0.sightTF, false)

	slot0.corners = slot0.blurPanel:Find("Corners")
	slot0.shootAreaTF = slot0._tf:Find("noAdaptPanel/ShootArea")
	slot0.targetPanel = slot0.shootAreaTF:Find("target_panel")
	slot0.targetTpl = {}

	for slot5 = 1, slot0.shootAreaTF:Find("tpl").childCount do
		slot0.targetTpl[slot5] = slot1:GetChild(slot5 - 1)
	end

	setActive(slot1, false)

	slot0.startMaskTF = slot0._tf:Find("noAdaptPanel/blur_panel/start_mask")
	slot0.countdownTF = slot0._tf:Find("noAdaptPanel/blur_panel/countUI")
	slot0.lastTimeTF = slot0.shootAreaTF:Find("time_word")
	slot0.bottomTF = slot0._tf:Find("noAdaptPanel/bottom")
	slot0.joyStrickTF = slot0.bottomTF:Find("Stick")
	slot0.fireBtn = slot0.bottomTF:Find("fire/ActCtl")
	slot0.fireBtnDelegate = GetOrAddComponent(slot0.fireBtn, "EventTriggerListener")

	setActive(slot0.fireBtn:Find("block"), false)

	slot0.resultPanel = slot0._tf:Find("result_panel")

	setText(findTF(slot0.resultPanel, "main/right/score/Text"), i18n("game_room_shooting_tip"))
	setActive(slot0.resultPanel, false)
end

slot0.initData = function(slot0)
	slot0.tempConfig = slot0:GetMGData():getConfig("simple_config_data")
	slot0.tempConfig.waitCountdown = 3
	slot0.tempConfig.half = 56
end

slot0.addTimer = function(slot0, slot1, slot2, slot3)
	slot0.timerList = slot0.timerList or {}

	assert(slot0.timerList[slot1] == nil, "error Timers")
	assert(slot2 > 0, "duration must >0")

	slot0.timerList[slot1] = {
		timeMark = Time.realtimeSinceStartup + slot2,
		func = slot3
	}
end

slot0.updateTimers = function(slot0)
	slot1 = Time.realtimeSinceStartup

	for slot5, slot6 in pairs(slot0.timerList) do
		if slot6.timeMark < slot1 then
			slot0.timerList[slot5] = nil

			slot6.func()
		end
	end
end

slot0.stopTimers = function(slot0)
	slot0.isStopped = true
	slot1 = Time.realtimeSinceStartup

	for slot5, slot6 in pairs(slot0.timerList) do
		slot6.timeMark = slot6.timeMark - slot1
	end
end

slot0.restartTimers = function(slot0)
	slot0.isStopped = false
	slot1 = Time.realtimeSinceStartup

	for slot5, slot6 in pairs(slot0.timerList) do
		slot6.timeMark = slot6.timeMark + slot1
	end
end

slot0.clearTimers = function(slot0)
	slot0.timerList = {}
end

slot0.didEnter = function(slot0)
	onButton(slot0, slot0.backBtn, function ()
		if uv0.isPlaying then
			uv0:stopTimers()
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				content = i18n("tips_summergame_exit"),
				onYes = function ()
					uv0.lastTime = 0

					uv0:restartTimers()
					uv0:gameFinish()
				end,
				onNo = function ()
					uv0:restartTimers()
				end
			})
		else
			uv0:closeView()
		end
	end)
	onButton(slot0, findTF(slot0.startMaskTF, "startGame"), function ()
		if not uv0.isPlaying then
			uv0:openCoinLayer(false)
			uv0:gameStart()
		end
	end)

	if slot0:getGameRoomData() then
		slot0.gameHelpTip = slot0:getGameRoomData().game_help
	end

	onButton(slot0, findTF(slot0.startMaskTF, "ruleGame"), function ()
		pg.MsgboxMgr.GetInstance():ShowMsgBox({
			type = MSGBOX_TYPE_HELP,
			helps = uv0.gameHelpTip
		})
	end)
	slot0:initData()
	slot0:updateCount()
	slot0:resetTime()
	slot0:initFireFunc()
	slot0:setFireLink(false)
	slot0:changeStartMaskUI(true)
end

slot0.changeStartMaskUI = function(slot0, slot1)
	setActive(slot0.bottomTF, not slot1)
	setActive(slot0.startMaskTF, slot1)
end

slot0.onBackPressed = function(slot0)
	triggerButton(slot0.backBtn)
end

slot1 = function(slot0, slot1)
	return Vector2(math.clamp(slot0.x, -slot1.x, slot1.x), math.clamp(slot0.y, -slot1.y, slot1.y))
end

slot0.update = function(slot0)
	slot1 = Time.GetTimestamp()

	if not slot0.isStopped then
		if slot0.isAfterCount and slot0.sightTimeMark then
			if not slot0.moveRect then
				slot2 = tf(slot0.sightTF.parent)
				slot0.moveRect = Vector2(slot2.rect.width - slot0.sightTF.rect.width, slot2.rect.height - slot0.sightTF.rect.height) / 2
			end

			slot0.sightTF.anchoredPosition = uv1(slot0.sightTF.anchoredPosition + Vector2(slot0.uiMGR.hrz, slot0.uiMGR.vtc) * slot0.tempConfig.moveSpeed * (slot1 - slot0.sightTimeMark) * uv0.moveModulus * (slot0.isDown and 0.5 or 1), slot0.moveRect)
		end

		slot0:updateTimers()
	end

	slot0.sightTimeMark = slot1
end

slot0.resetTime = function(slot0)
	slot0.countdown = slot0.tempConfig.waitCountdown

	setText(findTF(slot0.countdownTF, "count"), slot0.countdown)

	slot0.lastTime = slot0.tempConfig.baseTime

	setText(slot0.lastTimeTF, slot0.lastTime)
end

slot0.gameStart = function(slot0)
	slot0.isPlaying = true

	slot0:changeStartMaskUI(false)

	slot1 = UpdateBeat

	slot1:Add(slot0.update, slot0)
	setActive(slot0.countdownTF, true)

	slot1 = function(slot0)
		slot1 = uv0

		slot1:addTimer("start countdown", 1, function ()
			uv0.countdown = uv0.countdown - 1

			setText(findTF(uv0.countdownTF, "count"), uv0.countdown)

			if uv0.countdown > 0 then
				uv1(uv1)
			else
				uv0:afterCountDown()
			end
		end)
	end

	slot1(slot1)
end

slot0.afterCountDown = function(slot0)
	slot0.isAfterCount = true
	slot1 = slot0.uiMGR

	slot1:AttachStickOb(slot0.joyStrickTF)
	setActive(slot0.sightTF, true)
	setActive(slot0.countdownTF, false)
	setAnchoredPosition(slot0.sightTF, Vector2.zero)
	slot0:setFireLink(true)

	slot0.score = 0

	slot0:flushTarget(true)

	slot1 = function(slot0)
		slot1 = uv0

		slot1:addTimer("gamefinish", 1, function ()
			uv0.lastTime = uv0.lastTime - 1

			setText(uv0.lastTimeTF, uv0.lastTime)

			if uv0.lastTime > 0 then
				uv1(uv1)
			else
				uv0:gameFinish()
			end
		end)
	end

	slot1(slot1)
end

slot0.gameFinish = function(slot0, slot1)
	if slot0.isAfterCount then
		slot0:setFireLink(false)
		slot0.uiMGR:ClearStick()

		slot0.isAfterCount = false
	end

	slot0:clearTimers()
	UpdateBeat:Remove(slot0.update, slot0)
	setActive(slot0.sightTF, false)
	setActive(slot0.countdownTF, false)
	slot0:resetTime()

	slot0.isPlaying = false

	if not slot1 then
		for slot5 = 1, 3 do
			for slot9 = 1, 6 do
				if slot0.cell[slot5][slot9] then
					slot0.targetPanel:Find("line_" .. slot5):GetChild(slot9 - 1):GetChild(0):GetComponent(typeof(Animator)):Play("targetDown")
				end
			end
		end

		Timer.New(function ()
			uv0:changeStartMaskUI(true)
		end, uv0.animTime):Start()
		slot0:resultFinish()
	end
end

slot0.resultFinish = function(slot0)
	slot2 = 1

	for slot6 = 1, #slot0.tempConfig.score_level do
		if slot1[slot6] <= slot0.score then
			slot2 = slot6
		end
	end

	slot0.awardLevel = slot2

	slot0:SendSuccess(slot0.score)
	slot0:showResultPanel({})
end

slot0.showResultPanel = function(slot0, slot1, slot2)
	slot3 = function()
		setActive(uv0.resultPanel, false)
		uv0:openCoinLayer(true)

		if uv1 then
			uv1()
		else
			uv0:updateCount()
		end
	end

	onButton(slot0, slot0.resultPanel:Find("bg"), slot3)
	onButton(slot0, slot0.resultPanel:Find("main/btn_confirm"), slot3)

	slot4 = slot0.resultPanel:Find("main")

	if slot0.bestScore < slot0.score then
		slot0:StoreDataToServer({
			slot0.score
		})
		GetImageSpriteFromAtlasAsync("ui/minigameui/shootinggameui_atlas", "new_recode", slot4:Find("success"), true)
	else
		GetImageSpriteFromAtlasAsync("ui/minigameui/shootinggameui_atlas", "success", slot4:Find("success"), true)
	end

	GetImageSpriteFromAtlasAsync("ui/minigameui/shootinggameui_atlas", "level_" .. slot0.awardLevel, slot4:Find("success/level"), true)
	setText(slot4:Find("right/score/number"), slot0.score)
	setActive(slot4:Find("right/awards/list"), #slot1 > 0)
	setActive(slot4:Find("right/awards/nothing"), #slot1 == 0)

	slot0.itemList = slot0.itemList or UIItemList.New(slot4:Find("right/awards/list"), slot4:Find("right/awards/list/item"))

	slot0.itemList:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			updateDrop(slot2, uv0[slot1 + 1])
			setText(slot2:Find("number"), "x" .. uv0[slot1 + 1].count)
		end
	end)
	slot0.itemList:align(#slot1)
	setActive(slot0.resultPanel, true)
end

slot0.OnSendMiniGameOPDone = function(slot0, slot1)
	slot0:updateCount()
end

slot0.updateCount = function(slot0)
	setText(slot0.ticketTF, slot0:GetMGHubData().count)

	slot0.bestScore = getProxy(GameRoomProxy):getRoomScore(slot0:getGameRoomData().id)

	setText(slot0.bestScoreTF, slot0.bestScore)
end

slot0.initFireFunc = function(slot0)
	slot1 = pg.TipsMgr.GetInstance()
	slot2 = pg.TimeMgr.GetInstance()
	slot3 = slot0.sightTF
	slot4 = slot0.sightTF

	setImageAlpha(slot3:Find("sight_base"), 1)
	setImageAlpha(slot4:Find("sight_ready"), 0)

	slot5 = function()
		setActive(uv0.corners, true)

		slot0 = LeanTween.scale(uv1, Vector3(1.95, 1.95, 1), 0.1)

		slot0:setOnComplete(System.Action(function ()
			LeanTween.alpha(uv0, 0, 0.1)
			LeanTween.alpha(uv1, 1, 0.1)
		end))
	end

	slot6 = function()
		setActive(uv0.corners, false)
		LeanTween.alpha(uv1, 1, 0.1)

		slot0 = LeanTween.alpha(uv2, 0, 0.1)

		slot0:setOnComplete(System.Action(function ()
			LeanTween.scale(uv0, Vector3.one, 0.1)
		end))
	end

	slot0._downFunc = function()
		uv0()
	end

	slot0._upFunc = function()
		LeanTween.scale(uv0, Vector3(2, 2, 2), 0.03):setOnComplete(System.Action(function ()
			LeanTween.scale(uv0, Vector3.one, 0.07):setOnComplete(System.Action(function ()
				uv0()
			end))
		end))

		slot0, slot1, slot2 = uv2:checkHit()

		if slot0 then
			slot3 = uv2.cell[slot1][slot2]
			uv2.cell[slot1][slot2] = nil
			uv2.score = uv2.score + uv2.tempConfig.targetScore[slot3]
			uv2.targetCount[slot3] = uv2.targetCount[slot3] - 1
			uv2.lastTime = uv2.lastTime + uv2.tempConfig.bonusTime

			setText(uv2.lastTimeTF, uv2.lastTime)

			slot4 = uv2.targetPanel
			slot4 = slot4:Find("line_" .. slot1)
			slot4 = slot4:GetChild(slot2 - 1)
			slot4 = slot4:GetChild(0)
			slot4 = slot4:GetComponent(typeof(Animator))

			slot4:Play("targetDown")

			slot5 = uv2

			slot5:addTimer("flush call", 0.2 + uv3.animTime, function ()
				uv0:flushTarget()
			end)

			if not _.any(uv2.targetCount, function (slot0)
				return slot0 > 0
			end) then
				uv2:gameFinish()
			end
		end

		slot3 = uv2

		slot3:setFireLink(false)

		slot3 = uv2

		slot3:addTimer("fire cd", uv2.tempConfig.fireCD, function ()
			uv0:setFireLink(true)
		end)
	end

	slot0._cancelFunc = function()
		uv0()
	end

	slot0._emptyFunc = nil
end

slot0.setFireLink = function(slot0, slot1)
	if slot1 then
		setButtonEnabled(slot0.fireBtn, true)

		if slot0._downFunc ~= nil then
			slot2 = slot0.fireBtnDelegate

			slot2:AddPointDownFunc(function ()
				uv0.isDown = true

				if uv0._main_cannon_sound then
					uv0._main_cannon_sound:Stop(true)
				end

				uv0._main_cannon_sound = pg.CriMgr.GetInstance():PlaySE_V3("battle-cannon-main-prepared")

				uv0._downFunc()
			end)
		end

		if slot0._upFunc ~= nil then
			slot2 = slot0.fireBtnDelegate

			slot2:AddPointUpFunc(function ()
				if uv0.isDown then
					if uv0._main_cannon_sound then
						uv0._main_cannon_sound:Stop(true)
					end

					pg.CriMgr.GetInstance():PlaySoundEffect_V3("event:/battle/boom2")

					uv0.isDown = false

					uv0._upFunc()
				end
			end)
		end

		if slot0._cancelFunc ~= nil then
			slot2 = slot0.fireBtnDelegate

			slot2:AddPointExitFunc(function ()
				if uv0.isDown then
					if uv0._main_cannon_sound then
						uv0._main_cannon_sound:Stop(true)
					end

					uv0.isDown = false

					uv0._cancelFunc()
				end
			end)
		end
	else
		if slot0.isDown then
			slot0.isDown = false

			slot0._cancelFunc()
		end

		setButtonEnabled(slot0.fireBtn, false)
		slot0.fireBtnDelegate:RemovePointDownFunc()
		slot0.fireBtnDelegate:RemovePointUpFunc()
		slot0.fireBtnDelegate:RemovePointExitFunc()
	end
end

slot0.flushTarget = function(slot0, slot1)
	if slot1 then
		slot0.targetCount = {
			2,
			4,
			6
		}
	end

	for slot5 = 1, 3 do
		for slot9 = 1, 6 do
			removeAllChildren(slot0.targetPanel:Find("line_" .. slot5):GetChild(slot9 - 1))
		end
	end

	slot2 = {
		0,
		0,
		0
	}
	slot0.cell = {
		{},
		{},
		{}
	}

	for slot6, slot7 in ipairs(slot0.targetCount) do
		for slot11 = 1, slot7 do
			slot12 = math.random(3)
			slot13 = math.random(6)

			while slot0.cell[slot12][slot13] or slot1 and slot2[slot12] >= 4 do
				slot13 = math.random(6)
				slot12 = math.random(3)
			end

			slot2[slot12] = slot2[slot12] + 1
			slot0.cell[slot12][slot13] = slot6

			cloneTplTo(slot0.targetTpl[slot6], slot0.targetPanel:Find("line_" .. slot12):GetChild(slot13 - 1))
		end
	end

	setText(slot0.scoreTF, slot0.score)
end

slot0.checkHit = function(slot0)
	for slot4 = 1, 3 do
		for slot8 = 1, 6 do
			if slot0.cell[slot4][slot8] then
				slot9 = slot0.targetPanel:Find("line_" .. slot4):GetChild(slot8 - 1):GetChild(0):Find("icon/face")
				slot10 = slot0.sightTF:InverseTransformPoint(slot9:TransformPoint(slot9.position))

				if slot10.x * slot10.x + slot10.y * slot10.y < slot0.tempConfig.half * slot0.tempConfig.half then
					return true, slot4, slot8
				end
			end
		end
	end
end

slot0.willExit = function(slot0)
end

return slot0
