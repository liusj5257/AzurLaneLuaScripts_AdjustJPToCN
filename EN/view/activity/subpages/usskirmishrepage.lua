slot0 = class("USSkirmishRePage", import("...base.BaseActivityPage"))

slot0.OnInit = function(slot0)
	slot0:initUI()
	slot0:initData()
	slot0:addListener()
end

slot0.OnFirstFlush = function(slot0)
end

slot0.OnUpdateFlush = function(slot0)
	for slot4, slot5 in ipairs(slot0.taskVOList) do
		slot7 = slot0.progress:GetChild(slot4 - 1)
		slot8 = slot0:findTF("Empty", slot7)
		slot9 = slot0:findTF("Full", slot7)

		if slot5.state < SkirmishVO.StateClear then
			setActive(slot8, true)
			setActive(slot9, false)
		else
			setActive(slot8, false)
			setActive(slot9, true)
		end
	end
end

slot0.initUI = function(slot0)
	slot0.bg = slot0:findTF("AD")
	slot0.progress = slot0:findTF("Progress")
	slot0.helpBtn = slot0:findTF("HelpBtn")
	slot0.battleBtn = slot0:findTF("BattleBtn")
end

slot0.initData = function(slot0)
	slot0.taskGroup = Clone(pg.activity_template[ActivityConst.ACTIVITY_ID_US_SKIRMISH_RE].config_data)
	slot0.taskCount = #slot0.taskGroup
	slot0.skirmishProxy = getProxy(SkirmishProxy)

	slot0.skirmishProxy:UpdateSkirmishProgress()

	slot0.taskVOList = Clone(slot0.skirmishProxy.data)
end

slot0.addListener = function(slot0)
	onButton(slot0, slot0.helpBtn, function ()
		if pg.gametip.help_tempesteve then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				type = MSGBOX_TYPE_HELP,
				helps = pg.gametip.help_tempesteve.tip,
				weight = LayerWeightConst.TOP_LAYER
			})
		end
	end, SFX_PANEL)
	onButton(slot0, slot0.battleBtn, function ()
		pg.m02:sendNotification(GAME.GO_SCENE, SCENE.LEVEL, {
			mapIdx = SkirmishProxy.SkirmishMap
		})
	end, SFX_PANEL)
end

return slot0
