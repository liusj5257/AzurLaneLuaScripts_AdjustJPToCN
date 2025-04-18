slot0 = class("CommanderBoxCard")

slot0.Ctor = function(slot0, slot1, slot2)
	slot0._parent = slot1
	slot0._tf = slot2
	slot0._go = go(slot2)
	slot0.startingTF = slot0._tf:Find("ongoing")
	slot0.idleTF = slot0._tf:Find("idle")
	slot0.waitTF = slot0._tf:Find("wait")
	slot0.timerTxt = slot0.startingTF:Find("time/Text"):GetComponent(typeof(Text))
	slot0.slider = slot0.startingTF:Find("slider/bar")
	slot0.boxParent = slot0._tf:Find("char")
	slot0.titleStarting = slot0.startingTF:Find("title_starting")
	slot0.titleFinish = slot0.startingTF:Find("title_finish")
	slot0.quicklyTool = slot0.startingTF:Find("quickly_tool")
end

slot0.Update = function(slot0, slot1)
	slot0.boxVO = slot1

	slot0:removeTimer()
	slot0:removeWaitingTimer()
	removeOnButton(slot0._tf)

	if slot1:getState() == CommanderBox.STATE_EMPTY then
		-- Nothing
	elseif slot2 == CommanderBox.STATE_WAITING then
		slot0.waitTimer = Timer.New(function ()
			uv0:removeWaitingTimer()
			uv0:Update(uv1)
			uv0._parent:updateCntLabel()
		end, slot1.beginTime - pg.TimeMgr.GetInstance():GetServerTime(), 1)

		slot0.waitTimer:Start()
	elseif slot2 == CommanderBox.STATE_STARTING then
		slot4 = slot1:getFinishTime() - slot1.beginTime
		slot0.timer = Timer.New(function ()
			if uv0 - pg.TimeMgr.GetInstance():GetServerTime() <= 0 then
				uv1:removeTimer()
				uv1:Update(uv2)
			else
				uv1.timerTxt.text = pg.TimeMgr.GetInstance():DescCDTime(slot1)

				setFillAmount(uv1.slider, 1 - slot1 / uv3)
			end
		end, 1, -1)
		slot5 = slot0.timer

		slot5:Start()
		slot0.timer.func()
		onButton(slot0._parent, slot0.quicklyTool, function ()
			uv0._parent:emit(CommanderCatScene.EVENT_QUICKLY_TOOL, uv1.id)
		end, SFX_PANEL)
	elseif slot2 == CommanderBox.STATE_FINISHED then
		slot0.timerTxt.text = "COMPLETE"

		setFillAmount(slot0.slider, 1)
		onButton(slot0._parent, slot0._tf, function ()
			if getProxy(PlayerProxy):getData().commanderBagMax <= getProxy(CommanderProxy):getCommanderCnt() then
				pg.TipsMgr.GetInstance():ShowTips(i18n("commander_capcity_is_max"))

				return
			end

			uv0._parent:emit(CommanderCatMediator.GET, uv1.id)
		end, SFX_PANEL)
	end

	setActive(slot0.quicklyTool, slot2 == CommanderBox.STATE_STARTING and not LOCK_CATTERY)
	setActive(slot0.titleStarting, slot2 == CommanderBox.STATE_STARTING)
	setActive(slot0.titleFinish, slot2 == CommanderBox.STATE_FINISHED)
	setActive(slot0.startingTF, slot2 == CommanderBox.STATE_STARTING or slot2 == CommanderBox.STATE_FINISHED)
	setActive(slot0.idleTF, slot2 == CommanderBox.STATE_EMPTY)
	setActive(slot0.waitTF, slot2 == CommanderBox.STATE_WAITING)
	slot0:loadBox(slot1:getPrefab(), slot0.boxParent)
end

slot1 = true

slot0.playAnim = function(slot0, slot1)
	slot4 = slot0.boxVO

	slot0:loadBox(slot4:getFetchPrefab(), slot0.boxParent, function (slot0)
		uv0.spineAnimUI = slot0

		slot0:SetActionCallBack(function (slot0)
			if slot0 == "finish" then
				uv0:SetActionCallBack(nil)
				uv1()
			end
		end)
	end)
end

slot0.loadBox = function(slot0, slot1, slot2, slot3)
	if not slot1 then
		slot0:returnChar()
	else
		if slot0.prefabName == slot1 then
			return
		end

		slot0:returnChar()

		slot0.prefabName = slot1
		slot5 = PoolMgr.GetInstance()

		slot5:GetSpineChar(slot1, true, function (slot0)
			if uv0.exited or uv1 ~= uv0.prefabName then
				PoolMgr.GetInstance():ReturnSpineChar(uv1, slot0)

				return
			end

			uv0.modelTf = tf(slot0)
			uv0.modelTf.localScale = Vector3(0.7, 0.7, 1)
			uv0.modelTf.localPosition = Vector3(0, -123, 0)

			pg.ViewUtils.SetLayer(uv0.modelTf, Layer.UI)
			setParent(uv0.modelTf, uv2)
			slot0:GetComponent("SpineAnimUI"):SetAction("normal", 0)

			if uv3 then
				uv3(slot1)
			end
		end)
	end
end

slot0.removeTimer = function(slot0)
	if slot0.timer then
		slot0.timer:Stop()

		slot0.timer = nil
	end
end

slot0.removeWaitingTimer = function(slot0)
	if slot0.waitTimer then
		slot0.waitTimer:Stop()

		slot0.waitTimer = nil
	end
end

slot0.returnChar = function(slot0)
	if slot0.modelTf and slot0.prefabName then
		PoolMgr.GetInstance():ReturnSpineChar(slot0.prefabName, slot0.modelTf.gameObject)

		slot0.modelTf = nil
		slot0.prefabName = nil
	end
end

slot0.Clear = function(slot0)
	slot0:removeTimer()
	slot0:removeWaitingTimer()
	removeOnButton(slot0._tf)

	slot0.boxVO = nil
end

slot0.Destroy = function(slot0)
	slot0:Clear()
	slot0:returnChar()

	slot0.exited = true
	slot0.boxVO = nil
	slot0.loading = nil
end

return slot0
