slot0 = class("StoryPlayer", import("..animation.StoryAnimtion"))
slot1 = 0
slot2 = 1
slot3 = 2
slot4 = 3
slot5 = 4
slot6 = 5
slot7 = 6
slot8 = 7
slot9 = 0
slot10 = 1
slot11 = 2

slot0.Ctor = function(slot0, slot1)
	uv0.super.Ctor(slot0)
	pg.DelegateInfo.New(slot0)

	slot0._go = slot1
	slot0._tf = slot1.transform
	slot0.animationPlayer = slot0._tf:GetComponent(typeof(Animation))
	slot0.front = slot0:findTF("front")
	slot0.actorTr = slot0._tf:Find("actor")
	slot0.frontTr = slot0._tf:Find("front")
	slot0.backPanel = slot0:findTF("back")
	slot0.goCG = GetOrAddComponent(slot0._tf, typeof(CanvasGroup))
	slot0.asidePanel = slot0:findTF("front/aside_panel")
	slot0.bgGlitch = slot0:findTF("back/bg_glitch")
	slot0.oldPhoto = slot0:findTF("front/oldphoto"):GetComponent(typeof(Image))
	slot0.bgPanel = slot0:findTF("back/bg")
	slot0.bgPanelCg = slot0.bgPanel:GetComponent(typeof(CanvasGroup))
	slot0.bgImage = slot0:findTF("image", slot0.bgPanel):GetComponent(typeof(Image))
	slot0.mainImg = slot0._tf:GetComponent(typeof(Image))
	slot0.castPanel = slot0:findTF("front/cast_panel")
	slot0.spAnimPanel = slot0:findTF("front/sp_anim_panel")
	slot0.centerPanel = slot0._tf:Find("center")
	slot0.actorPanel = slot0:findTF("actor")
	slot0.dialoguePanel = slot0:findTF("front/dialogue")
	slot0.effectPanel = slot0:findTF("front/effect")
	slot0.movePanel = slot0:findTF("front/move_layer")
	slot0.curtain = slot0:findTF("back/curtain")
	slot0.curtainCg = slot0.curtain:GetComponent(typeof(CanvasGroup))
	slot0.flash = slot0:findTF("front/flash")
	slot0.flashImg = slot0.flash:GetComponent(typeof(Image))
	slot0.flashCg = slot0.flash:GetComponent(typeof(CanvasGroup))
	slot0.curtainF = slot0:findTF("back/curtain_front")
	slot0.curtainFCg = slot0.curtainF:GetComponent(typeof(CanvasGroup))
	slot0.locationTr = slot0:findTF("front/location")
	slot0.locationTxt = slot0:findTF("front/location/Text"):GetComponent(typeof(Text))
	slot0.locationTrPos = slot0.locationTr.localPosition
	slot0.locationAnim = slot0.locationTr:GetComponent(typeof(Animation))
	slot0.locationAniEvent = slot0.locationTr:GetComponent(typeof(DftAniEvent))
	slot0.iconImage = slot0:findTF("front/icon"):GetComponent(typeof(Image))
	slot0.topEffectTr = slot0:findTF("top/effect")
	slot0.dialogueWin = nil
	slot0.bgs = {}
	slot0.branchCodeList = {}
	slot0.stop = false
	slot0.pause = false
end

slot0.Disable = function(slot0)
	setActive(slot0._tf, false)
end

slot0.Enable = function(slot0)
	setActive(slot0._tf, true)
end

slot0.StoryStart = function(slot0, slot1)
	slot0.branchCodeList = {}

	eachChild(slot0.dialoguePanel, function (slot0)
		setActive(slot0, false)
	end)

	slot0.dialogueWin = slot0.dialoguePanel:Find(slot1:GetDialogueStyleName())

	setActive(slot0.dialogueWin, true)

	slot0.optionLUIlist = UIItemList.New(slot0.dialogueWin:Find("options_panel/options_l"), slot0.dialogueWin:Find("options_panel/options_l/option_tpl"))
	slot0.optionCUIlist = UIItemList.New(slot0.dialogueWin:Find("options_panel/options_c"), slot0.dialogueWin:Find("options_panel/options_c/option_tpl"))
	slot0.optionsCg = slot0.dialogueWin:Find("options_panel"):GetComponent(typeof(CanvasGroup))

	slot0:OnStart(slot1)
end

slot0.GetOptionContainer = function(slot0, slot1)
	slot2 = slot1:GetOptionCnt()

	if slot0.script:IsDialogueStyle2() then
		setActive(slot0.optionLUIlist.container, true)
		setActive(slot0.optionCUIlist.container, false)

		return slot0.optionLUIlist, true
	end

	if slot2 <= 3 then
		setActive(slot0.optionLUIlist.container, false)
		setActive(slot0.optionCUIlist.container, true)

		return slot0.optionCUIlist, false
	else
		setActive(slot0.optionLUIlist.container, true)
		setActive(slot0.optionCUIlist.container, false)

		return slot0.optionLUIlist, true
	end
end

slot0.Pause = function(slot0)
	slot0.pause = true

	slot0:PauseAllAnimation()
	pg.ViewUtils.SetLayer(slot0.effectPanel, Layer.UIHidden)
end

slot0.Resume = function(slot0)
	slot0.pause = false

	slot0:ResumeAllAnimation()
	pg.ViewUtils.SetLayer(slot0.effectPanel, Layer.UI)
end

slot0.Stop = function(slot0)
	slot0.stop = true

	slot0:NextOneImmediately()
end

slot0.Play = function(slot0, slot1, slot2, slot3)
	if not slot1 then
		slot3()

		return
	end

	if slot1:GetNextScriptName() or slot0.stop then
		slot3()

		return
	end

	if not slot1:GetStepByIndex(slot2) then
		slot3()

		return
	end

	pg.NewStoryMgr.GetInstance():AddRecord(slot4)

	if slot4:ShouldJumpToNextScript() then
		slot1:SetNextScriptName(slot4:GetNextScriptName())
		slot3()

		return
	end

	if slot1:ShouldSkipAll() then
		slot0:ClearEffects()
	end

	slot6 = false

	if slot5 and slot4:IsImport() and not pg.NewStoryMgr.GetInstance():IsReView() then
		slot6 = true
	elseif slot5 then
		slot3()

		return
	end

	slot0.script = slot1
	slot0.callback = slot3
	slot0.step = slot4
	slot0.autoNext = slot1:GetAutoPlayFlag()
	slot0.stage = uv0
	slot7 = slot1:GetTriggerDelayTime()

	if slot0.autoNext and slot4:IsImport() and not slot4.optionSelCode then
		slot0.autoNext = nil
	end

	slot0:SetTimeScale(1 - slot1:GetPlaySpeed() * 0.1)

	slot8 = slot1:GetPrevStep(slot2)

	seriesAsync({
		function (slot0)
			if not uv0:NextStage(uv1) then
				return
			end

			parallelAsync({
				function (slot0)
					uv0:Reset(uv1, uv2, slot0)
					uv0:UpdateBg(uv1)
					uv0:PlayBgm(uv1)
				end,
				function (slot0)
					uv0:LoadEffects(uv1, slot0)
				end,
				function (slot0)
					uv0:ApplyEffects(uv1, slot0)
				end,
				function (slot0)
					uv0:flashin(uv1, slot0)
				end
			}, slot0)
		end,
		function (slot0)
			if uv0 then
				uv1:StopSkip()
			end

			uv0 = false

			slot0()
		end,
		function (slot0)
			if not uv0:NextStage(uv1) then
				return
			end

			parallelAsync({
				function (slot0)
					uv0:OnInit(uv1, uv2, slot0)
				end,
				function (slot0)
					uv0:PlaySoundEffect(uv1)
					uv0:StartUIAnimations(uv1, slot0)
				end,
				function (slot0)
					uv0:OnEnter(uv1, uv2, slot0)
				end,
				function (slot0)
					uv0:StartMoveNode(uv1, slot0)
				end,
				function (slot0)
					uv0:UpdateIcon(uv1, slot0)
				end,
				function (slot0)
					uv0:SetLocation(uv1, slot0)
				end,
				function (slot0)
					if uv0:DispatcherEvent(uv1, slot0) then
						uv0.autoNext = true
						uv2 = 0
					end
				end
			}, slot0)
		end,
		function (slot0)
			uv0:ClearCheckDispatcher()

			if not uv0:NextStage(uv1) then
				return
			end

			if not uv2:ShouldDelayEvent() then
				slot0()

				return
			end

			uv0:DelayCall(uv2:GetEventDelayTime(), slot0)
		end,
		function (slot0)
			if not uv0:NextStage(uv1) then
				return
			end

			if uv0.skipOption then
				slot0()

				return
			end

			if uv2:SkipEventForOption() then
				slot0()

				return
			end

			if uv0:ShouldAutoTrigger() then
				uv0:UnscaleDelayCall(uv3, slot0)

				return
			end

			uv0:RegisetEvent(uv2, slot0)
			uv0:TriggerEventIfAuto(uv3)
		end,
		function (slot0)
			if not uv0:NextStage(uv1) then
				return
			end

			if not uv2:ExistOption() then
				slot0()

				return
			end

			if uv0.skipOption then
				uv0.skipOption = false

				slot0()

				return
			end

			slot1 = uv0

			slot1:InitBranches(uv3, uv2, function (slot0)
				uv0()
			end, function ()
				uv0:TriggerOptionIfAuto(uv1, uv2)
			end)
		end,
		function (slot0)
			if not uv0:NextStage(uv1) then
				return
			end

			uv0.autoNext = nil
			slot1 = uv2
			slot1 = slot1:GetNextStep(uv3)

			seriesAsync({
				function (slot0)
					uv0:ClearAnimation()
					uv0:ClearApplyEffect()
					uv0:OnWillExit(uv1, uv2, slot0)
				end,
				function (slot0)
					parallelAsync({
						function (slot0)
							if not uv0 then
								slot0()

								return
							end

							uv1:Flashout(uv0, slot0)
						end,
						function (slot0)
							if uv0 then
								slot0()

								return
							end

							uv1:FadeOutStory(uv1.script, slot0)
						end
					}, slot0)
				end
			}, slot0)
		end,
		function (slot0)
			if not uv0:NextStage(uv1) then
				return
			end

			uv0:OnWillClear(uv2)
			uv0:Clear(slot0)
		end
	}, slot3)
end

slot0.NextStage = function(slot0, slot1)
	if slot0.stage == slot1 - 1 then
		slot0.stage = slot1

		return true
	end

	return false
end

slot0.ApplyEffects = function(slot0, slot1, slot2)
	if slot1:ShouldShake() then
		slot0:ApplyShakeEffect(slot1)
	end

	slot2()
end

slot0.ApplyShakeEffect = function(slot0, slot1)
	if not slot1:ShouldShake() then
		return
	end

	slot2 = slot0.animationPlayer

	slot2:Play("anim_storyrecordUI_shake_loop")

	slot0.playingShakeAnim = true

	slot0:DelayCall(slot1:GetShakeTime(), function ()
		uv0:ClearShakeEffect()
	end)
end

slot0.ClearShakeEffect = function(slot0)
	if slot0.playingShakeAnim then
		slot0.animationPlayer:Play("anim_storyrecordUI_shake_reset")

		slot0.playingShakeAnim = nil
	end
end

slot0.ClearApplyEffect = function(slot0)
	slot0:ClearShakeEffect()
end

slot0.DispatcherEvent = function(slot0, slot1, slot2)
	if not slot1:ExistDispatcher() then
		slot2()

		return
	end

	slot3 = slot1:GetDispatcher()

	pg.NewStoryMgr.GetInstance():ClearStoryEvent()
	pg.m02:sendNotification(slot3.name, {
		data = slot3.data,
		callbackData = slot3.callbackData,
		flags = slot0.branchCodeList[slot1:GetId()] or {}
	})

	if slot1:ShouldHideUI() then
		setActive(slot0._tf, false)
	end

	if slot1:IsRecallDispatcher() then
		slot0:CheckDispatcher(slot1, slot2)
	else
		slot2()
	end

	return slot3.nextOne
end

slot0.WaitForEvent = function(slot0)
	return slot0.checkTimer ~= nil
end

slot0.CheckDispatcher = function(slot0, slot1, slot2)
	slot3 = slot1:GetDispatcherRecallName()

	slot0:ClearCheckDispatcher()

	slot0.checkTimer = Timer.New(function ()
		if pg.NewStoryMgr.GetInstance():CheckStoryEvent(uv0) then
			if pg.NewStoryMgr.GetInstance():GetStoryEventArg(uv0) then
				existCall(slot0.notifiCallback)
			end

			if slot0 and slot0.optionIndex then
				uv1:SetBranchCode(uv1.script, uv2, slot0.optionIndex)

				uv1.skipOption = true
			end

			if uv2:ShouldHideUI() then
				setActive(uv1._tf, true)
			end

			uv1:ClearCheckDispatcher()
			uv3()
		end
	end, 1, -1)

	slot0.checkTimer:Start()
	slot0.checkTimer.func()
end

slot0.ClearCheckDispatcher = function(slot0)
	if slot0.checkTimer then
		slot0.checkTimer:Stop()

		slot0.checkTimer = nil
	end
end

slot0.TriggerEventIfAuto = function(slot0, slot1)
	if not slot0:ShouldAutoTrigger() then
		return
	end

	slot0:UnscaleDelayCall(slot1, function ()
		if not uv0.autoNext then
			setButtonEnabled(uv0._go, true)

			return
		end

		triggerButton(uv0._go)
	end)
end

slot0.TriggerOptionIfAuto = function(slot0, slot1, slot2)
	if not slot0:ShouldAutoTrigger() then
		return
	end

	if not slot2 or not slot2:ExistOption() then
		return
	end

	slot0:UnscaleDelayCall(slot1, function ()
		if not uv0.autoNext then
			return
		end

		if uv1:GetOptionIndexByAutoSel() ~= nil then
			triggerButton(uv0:GetOptionContainer(uv1).container:GetChild(slot0 - 1))
		end
	end)
end

slot0.ShouldAutoTrigger = function(slot0)
	if slot0.pause or slot0.stop then
		return false
	end

	return slot0.autoNext
end

slot0.CanSkip = function(slot0)
	return slot0.step and not slot0.step:IsImport()
end

slot0.CancelAuto = function(slot0)
	slot0.autoNext = false
end

slot0.NextOne = function(slot0)
	slot0.timeScale = 0.0001

	if slot0.stage == uv0 then
		slot0.autoNext = true
	elseif slot0.stage == uv1 then
		slot0.autoNext = true

		slot0:TriggerEventIfAuto(0)
	elseif slot0.stage == uv2 then
		slot0:TriggerOptionIfAuto(0, slot0.step)
	end
end

slot0.NextOneImmediately = function(slot0)
	if slot0.callback then
		slot0:ClearAnimation()
		slot0:Clear()
		slot1()
	end
end

slot0.SetLocation = function(slot0, slot1, slot2)
	if not slot1:ExistLocation() then
		slot0.locationAniEvent:SetEndEvent(nil)
		slot2()

		return
	end

	setActive(slot0.locationTr, true)

	slot0.locationTxt.text = slot1:GetLocation().text

	slot5 = function()
		uv0:DelayCall(uv1.time, function ()
			uv0.locationAnim:Play("anim_newstoryUI_iocation_out")

			uv0.locationStatus = uv1
		end)
	end

	slot0.locationAniEvent:SetEndEvent(function ()
		if uv0.locationStatus == uv1 then
			uv2()
			uv3()
		elseif uv0.locationStatus == uv4 then
			setActive(uv0.locationTr, false)

			uv0.locationStatus = uv5
		end
	end)
	slot0.locationAnim:Play("anim_newstoryUI_iocation_in")

	slot0.locationStatus = uv1
end

slot0.UpdateIcon = function(slot0, slot1, slot2)
	if not slot1:ExistIcon() then
		setActive(slot0.iconImage.gameObject, false)
		slot2()

		return
	end

	slot3 = slot1:GetIconData()
	slot0.iconImage.sprite = LoadSprite(slot3.image)

	slot0.iconImage:SetNativeSize()

	slot4 = slot0.iconImage.gameObject.transform

	if slot3.pos then
		slot4.localPosition = Vector3(slot3.pos[1], slot3.pos[2], 0)
	else
		slot4.localPosition = Vector3.one
	end

	slot4.localScale = Vector3(slot3.scale or 1, slot3.scale or 1, 1)

	setActive(slot0.iconImage.gameObject, true)
	slot2()
end

slot0.UpdateOptionTxt = function(slot0, slot1, slot2, slot3, slot4)
	slot5 = slot2:GetComponent(typeof(LayoutElement))
	slot6 = slot2:Find("content")

	if slot1 then
		slot8 = slot2:Find("content_max")
		slot9 = GetPerceptualSize(slot3) >= 17
		slot10 = slot9 and slot8 or slot6

		setActive(slot6, not slot9)
		setActive(slot8, slot9)
		setText(slot10:Find("Text"), slot3)

		slot5.preferredHeight = slot10.rect.height
	else
		setText(slot6:Find("Text"), slot3)

		slot5.preferredHeight = slot6.rect.height
	end

	if slot6:Find("type1") then
		setActive(slot6:Find("type1"), slot4 and slot4 == 1)
	end

	if slot6:Find("type2") then
		setActive(slot6:Find("type2"), slot4 and slot4 == 2)
	end
end

slot0.InitBranches = function(slot0, slot1, slot2, slot3, slot4)
	slot5 = false
	slot7, slot8 = slot0:GetOptionContainer(slot2)
	slot10 = slot0.branchCodeList[slot2:GetId()] or {}
	GetOrAddComponent(slot7.container, typeof(CanvasGroup)).blocksRaycasts = true
	slot0.selectedBranchID = nil

	slot7:make(function (slot0, slot1, slot2)
		if slot0 == UIItemList.EventUpdate then
			slot3 = slot2
			slot7 = table.contains(uv1, uv0[slot1 + 1][2])

			onButton(uv2, slot3, function ()
				if uv0.pause or uv0.stop then
					return
				end

				if not uv1 then
					return
				end

				uv0.selectedBranchID = uv2

				uv0:SetBranchCode(uv3, uv4, uv5)
				pg.NewStoryMgr.GetInstance():TrackingOption(uv4:GetOptionIndex(), uv5)

				if uv6:GetComponent(typeof(Animation)) then
					uv7.blocksRaycasts = false

					slot0:Play(uv0.script:GetAnimPrefix() .. "confirm")
					uv6:GetComponent(typeof(DftAniEvent)):SetEndEvent(function ()
						setActive(uv0.optionsCg.gameObject, false)

						uv1.blocksRaycasts = true

						uv2(uv3)
					end)
				else
					setActive(uv0.optionsCg.gameObject, false)
					uv8(uv9)
				end

				uv0:HideBranchesWithoutSelected(uv4)
			end, SFX_PANEL)
			setButtonEnabled(slot3, not slot7)

			GetOrAddComponent(slot2, typeof(CanvasGroup)).alpha = slot7 and 0.5 or 1

			uv2:UpdateOptionTxt(uv8, slot3, uv0[slot1 + 1][1], uv0[slot1 + 1][3])

			if uv2.script:IsDialogueStyle2() then
				setActive(slot3, slot1 == 0)

				if slot1 > 0 then
					LeanTween.delayedCall(0.066 * slot1, System.Action(function ()
						setActive(uv0, true)
					end))
				end
			end
		end
	end)
	slot7:align(#slot2:GetOptions())
	slot0:ShowBranches(slot2, function ()
		uv0 = true

		if uv1 then
			uv1()
		end
	end)
end

slot0.SetBranchCode = function(slot0, slot1, slot2, slot3)
	slot2:SetBranchCode(slot3)
	slot1:SetBranchCode(slot3)

	if not slot0.branchCodeList[slot2:GetId()] then
		slot0.branchCodeList[slot4] = {}
	end

	table.insert(slot0.branchCodeList[slot4], slot3)
end

slot0.ShowBranches = function(slot0, slot1, slot2)
	setActive(slot0.optionsCg.gameObject, true)

	for slot7 = 0, slot0:GetOptionContainer(slot1).container.childCount - 1 do
		if slot3.container:GetChild(slot7):GetComponent(typeof(Animation)) then
			slot9:Play(slot0.script:GetAnimPrefix() .. "in")
		end
	end

	slot2()
end

slot0.HideBranchesWithoutSelected = function(slot0, slot1)
	for slot6 = 0, slot0:GetOptionContainer(slot1).container.childCount - 1 do
		if slot6 ~= slot0.selectedBranchID and slot2.container:GetChild(slot6):GetComponent(typeof(Animation)) then
			slot8:Play(slot0.script:GetAnimPrefix() .. "unselected")
		end
	end
end

slot0.StartMoveNode = function(slot0, slot1, slot2)
	if not slot1:ExistMovableNode() then
		slot2()

		return
	end

	slot4 = {}
	slot5 = {}

	for slot9, slot10 in pairs(slot1:GetMovableNode()) do
		table.insert(slot4, function (slot0)
			slot1 = uv0

			slot1:LoadMovableNode(uv1, function (slot0)
				uv0[uv1] = slot0

				uv2()
			end)
		end)
	end

	parallelAsync(slot4, function ()
		uv0:MoveAllNode(uv1, uv2, uv3)
		uv4()
	end)
end

slot0.MoveAllNode = function(slot0, slot1, slot2, slot3)
	slot4 = {}

	for slot8, slot9 in pairs(slot2) do
		table.insert(slot4, function (slot0)
			slot1 = uv0[uv1]

			uv2:moveLocalPath(uv3, slot1.path, slot1.time, slot1.delay, slot1.easeType, slot0)
		end)
	end

	slot0.moveTargets = slot2

	parallelAsync(slot4, function ()
		uv0:ClearMoveNodes(uv1)
	end)
end

slot12 = function(slot0, slot1, slot2, slot3, slot4)
	slot5 = PoolMgr.GetInstance()

	slot5:GetSpineChar(slot1, true, function (slot0)
		slot0.transform:SetParent(uv0.movePanel)

		slot1 = uv1.scale
		slot0.transform.localScale = Vector3(slot1, slot1, 0)
		slot0.transform.localPosition = uv2

		slot0:GetComponent(typeof(SpineAnimUI)):SetAction(uv1.action, 0)

		slot0.name = uv3

		if uv4 then
			uv4(slot0)
		end
	end)
end

slot13 = function(slot0, slot1, slot2, slot3)
	slot4 = GameObject.New("movable")
	slot5 = slot4.transform

	slot5:SetParent(slot0.movePanel)

	slot4.transform.localScale = Vector3.zero
	slot5 = GetOrAddComponent(slot4, typeof(RectTransform))
	slot6 = GetOrAddComponent(slot4, typeof(Image))

	LoadSpriteAsync(slot1, function (slot0)
		uv0.sprite = slot0

		uv0:SetNativeSize()

		uv1.localScale = Vector3.one
		uv1.localPosition = uv2

		uv3(uv1.gameObject)
	end)
end

slot0.LoadMovableNode = function(slot0, slot1, slot2)
	slot3 = slot1.path[1] or Vector3.zero

	if slot1.isSpine then
		uv0(slot0, slot1.name, slot1.spineData, slot3, slot2)
	else
		uv1(slot0, slot1.name, slot3, slot2)
	end
end

slot0.ClearMoveNodes = function(slot0, slot1)
	if not slot1:ExistMovableNode() then
		return
	end

	if slot0.movePanel.childCount <= 0 then
		return
	end

	slot2 = ipairs
	slot3 = slot0.moveTargets or {}

	for slot5, slot6 in slot2(slot3) do
		if slot6:GetComponent(typeof(SpineAnimUI)) ~= nil then
			PoolMgr.GetInstance():ReturnSpineChar(slot6.name, slot6.gameObject)
		else
			Destroy(slot0.movePanel:GetChild(slot5 - 1))
		end
	end

	slot0.moveTargets = {}
end

slot0.FadeOutStory = function(slot0, slot1, slot2)
	if not slot1:ShouldFadeout() then
		slot2()

		return
	end

	slot3 = slot1:GetFadeoutTime()

	if not slot1:ShouldWaitFadeout() then
		slot0:fadeTransform(slot0._go, 1, 0.3, slot3, true)
		slot2()
	else
		slot0:fadeTransform(slot0._go, 1, 0.3, slot3, true, slot2)
	end
end

slot0.GetFadeColor = function(slot0, slot1)
	slot2 = {}
	slot3 = {}

	for slot8, slot9 in ipairs(slot1:GetComponentsInChildren(typeof(Image)):ToTable()) do
		slot10 = {
			name = "_Color",
			color = Color.white
		}

		if slot9.material.shader.name == "UI/GrayScale" then
			slot10 = {
				name = "_GrayScale",
				color = Color.New(0.21176470588235294, 0.7137254901960784, 0.07058823529411765)
			}
		elseif slot9.material.shader.name == "UI/Line_Add_Blue" then
			slot10 = {
				name = "_GrayScale",
				color = Color.New(1, 1, 1, 0.5882352941176471)
			}
		end

		table.insert(slot3, slot10)

		if slot9.material == slot9.defaultGraphicMaterial then
			slot9.material = Material.Instantiate(slot9.defaultGraphicMaterial)
		end

		table.insert(slot2, slot9.material)
	end

	return slot2, slot3
end

slot0._SetFadeColor = function(slot0, slot1, slot2, slot3)
	for slot7, slot8 in ipairs(slot1) do
		if not IsNil(slot8) then
			slot8:SetColor(slot2[slot7].name, slot2[slot7].color * Color.New(slot3, slot3, slot3))
		end
	end
end

slot0.SetFadeColor = function(slot0, slot1, slot2)
	slot3, slot4 = slot0:GetFadeColor(slot1)

	slot0:_SetFadeColor(slot3, slot4, slot2)
end

slot0._RevertFadeColor = function(slot0, slot1, slot2)
	slot0:_SetFadeColor(slot1, slot2, 1)
end

slot0.RevertFadeColor = function(slot0, slot1)
	slot2, slot3 = slot0:GetFadeColor(slot1)

	slot0:_RevertFadeColor(slot2, slot3)
end

slot0.fadeTransform = function(slot0, slot1, slot2, slot3, slot4, slot5, slot6)
	if slot4 <= 0 then
		if slot6 then
			slot6()
		end

		return
	end

	slot7, slot8 = slot0:GetFadeColor(slot1)
	slot9 = LeanTween.value(go(slot1), slot2, slot3, slot4)
	slot9 = slot9:setOnUpdate(System.Action_float(function (slot0)
		uv0:_SetFadeColor(uv1, uv2, slot0)
	end))

	slot9:setOnComplete(System.Action(function ()
		if uv0 then
			uv1:_RevertFadeColor(uv2, uv3)
		end

		if uv4 then
			uv4()
		end
	end))
end

slot0.setPaintingAlpha = function(slot0, slot1, slot2)
	slot3 = {}
	slot4 = {}

	for slot9, slot10 in ipairs(slot1:GetComponentsInChildren(typeof(Image)):ToTable()) do
		slot11 = {
			name = "_Color",
			color = Color.white
		}

		if slot10.material.shader.name == "UI/GrayScale" then
			slot11 = {
				name = "_GrayScale",
				color = Color.New(0.21176470588235294, 0.7137254901960784, 0.07058823529411765)
			}
		elseif slot10.material.shader.name == "UI/Line_Add_Blue" then
			slot11 = {
				name = "_GrayScale",
				color = Color.New(1, 1, 1, 0.5882352941176471)
			}
		end

		table.insert(slot4, slot11)

		if slot10.material == slot10.defaultGraphicMaterial then
			slot10.material = Material.Instantiate(slot10.defaultGraphicMaterial)
		end

		table.insert(slot3, slot10.material)
	end

	for slot9, slot10 in ipairs(slot3) do
		if not IsNil(slot10) then
			slot10:SetColor(slot4[slot9].name, slot4[slot9].color * Color.New(slot2, slot2, slot2))
		end
	end
end

slot0.RegisetEvent = function(slot0, slot1, slot2)
	setButtonEnabled(slot0._go, not slot0.autoNext)
	onButton(slot0, slot0._go, function ()
		if uv0.pause or uv0.stop then
			return
		end

		removeOnButton(uv0._go)
		uv1()
	end, SFX_PANEL)
end

slot0.flashEffect = function(slot0, slot1, slot2, slot3, slot4, slot5, slot6)
	slot0.flashImg.color = slot4 and Color(0, 0, 0) or Color(1, 1, 1)
	slot0.flashCg.alpha = slot1

	setActive(slot0.flash, true)
	slot0:TweenValueForcanvasGroup(slot0.flashCg, slot1, slot2, slot3, slot5, slot6)
end

slot0.Flashout = function(slot0, slot1, slot2)
	slot3, slot4, slot5, slot6 = slot1:GetFlashoutData()

	if not slot3 then
		slot2()

		return
	end

	slot0:flashEffect(slot3, slot4, slot5, slot6, 0, slot2)
end

slot0.flashin = function(slot0, slot1, slot2)
	slot3, slot4, slot5, slot6, slot7 = slot1:GetFlashinData()

	if not slot3 then
		slot2()

		return
	end

	slot0:flashEffect(slot3, slot4, slot5, slot6, slot7, slot2)
end

slot0.UpdateBg = function(slot0, slot1)
	if slot1:ShouldBgGlitchArt() then
		slot0:SetBgGlitchArt(slot1)
	else
		if slot1:GetBgName() then
			setActive(slot0.bgPanel, true)

			slot0.bgPanelCg.alpha = 1
			slot3 = slot0.bgImage
			slot3.color = Color.New(1, 1, 1)
			slot3.sprite = slot0:GetBg(slot2)
		end

		if slot1:GetBgShadow() then
			slot0:TweenValue(slot0.bgImage, slot3[1], slot3[2], slot3[3], 0, function (slot0)
				uv0.color = Color.New(slot0, slot0, slot0)
			end, nil)
		end

		if slot1:IsBlackBg() then
			setActive(slot0.curtain, true)

			slot0.curtainCg.alpha = 1
		end

		slot4, slot5 = slot1:IsBlackFrontGround()

		if slot4 then
			slot0.curtainFCg.alpha = slot5
		end

		setActive(slot0.curtainF, slot4)
	end

	slot0:ApplyOldPhotoEffect(slot1)
	slot0:OnBgUpdate(slot1)

	slot0.curtain:GetComponent(typeof(Image)).color = slot1:GetBgColor()
end

slot0.ApplyOldPhotoEffect = function(slot0, slot1)
	slot3 = slot1:OldPhotoEffect() ~= nil

	setActive(slot0.oldPhoto.gameObject, slot3)

	if slot3 then
		if type(slot2) == "table" then
			slot0.oldPhoto.color = Color.New(slot2[1], slot2[2], slot2[3], slot2[4])
		else
			slot0.oldPhoto.color = Color.New(0.62, 0.58, 0.14, 0.36)
		end
	end
end

slot0.SetBgGlitchArt = function(slot0, slot1)
	setActive(slot0.bgPanel, false)
	setActive(slot0.bgGlitch, true)
end

slot0.GetBg = function(slot0, slot1)
	if not slot0.bgs[slot1] then
		slot0.bgs[slot1] = LoadSprite("bg/" .. slot1)
	end

	return slot0.bgs[slot1]
end

slot0.LoadEffects = function(slot0, slot1, slot2)
	if #slot1:GetEffects() <= 0 then
		slot2()

		return
	end

	slot4 = {}

	for slot8, slot9 in ipairs(slot3) do
		slot11 = slot9.active
		slot12 = slot9.interlayer
		slot13 = slot9.center
		slot14 = slot9.adapt

		if slot0.effectPanel:Find(slot9.name) or slot0.centerPanel:Find(slot10) then
			setActive(slot15, slot11)
			setParent(slot15, slot13 and slot0.centerPanel or slot0.effectPanel.transform)

			if slot12 then
				slot0:UpdateEffectInterLayer(slot10, slot15)
			end

			if not slot11 then
				slot0:ClearEffectInterlayer(slot10)
			elseif isActive(slot15) then
				setActive(slot15, false)
				setActive(slot15, true)
			end

			if slot14 then
				slot0:AdaptEffect(slot15)
			end
		else
			slot16 = ""

			if checkABExist("ui/" .. slot10) then
				slot16 = "ui"
			elseif checkABExist("effect/" .. slot10) then
				slot16 = "effect"
			end

			if slot16 and slot16 ~= "" then
				table.insert(slot4, function (slot0)
					LoadAndInstantiateAsync(uv0, uv1, function (slot0)
						setParent(slot0, uv0 and uv1.centerPanel or uv1.effectPanel.transform)

						slot0.transform.localScale = Vector3.one

						setActive(slot0, uv2)

						slot0.name = uv3

						if uv4 then
							uv1:UpdateEffectInterLayer(uv3, slot0)
						end

						if uv2 == false then
							uv1:ClearEffectInterlayer(uv3)
						end

						if uv5 then
							uv1:AdaptEffect(slot0)
						end

						uv6()
					end)
				end)
			else
				originalPrint("not found effect", slot10)
			end
		end
	end

	parallelAsync(slot4, slot2)
end

slot0.AdaptEffect = function(slot0, slot1)
	slot3 = pg.UIMgr.GetInstance().OverlayMain.parent.sizeDelta
	slot5 = 1
	slot5 = 1.7777777777777777 < slot3.x / slot3.y and slot4 / slot2 or slot2 / slot4
	tf(slot1).localScale = Vector3(slot5, slot5, slot5)
end

slot0.UpdateEffectInterLayer = function(slot0, slot1, slot2)
	slot3 = slot0._go:GetComponent(typeof(Canvas)).sortingOrder

	for slot8, slot9 in ipairs(slot2:GetComponentsInChildren(typeof("UnityEngine.ParticleSystemRenderer")):ToTable()) do
		if slot3 < ReflectionHelp.RefGetProperty(typeof("UnityEngine.ParticleSystemRenderer"), "sortingOrder", slot9) then
			slot3 = slot10
		end
	end

	slot3 = slot3 + 1
	slot5 = GetOrAddComponent(slot0.actorTr, typeof(Canvas))
	slot5.overrideSorting = true
	slot5.sortingOrder = slot3
	slot6 = GetOrAddComponent(slot0.frontTr, typeof(Canvas))
	slot6.overrideSorting = true
	slot6.sortingOrder = slot3 + 1
	slot0.activeInterLayer = slot1

	GetOrAddComponent(slot0.frontTr, typeof(GraphicRaycaster))
end

slot0.ClearEffectInterlayer = function(slot0, slot1)
	if slot0.activeInterLayer == slot1 then
		RemoveComponent(slot0.frontTr, "GraphicRaycaster")
		RemoveComponent(slot0.actorTr, "Canvas")
		RemoveComponent(slot0.frontTr, "Canvas")

		slot0.activeInterLayer = nil
	end
end

slot0.ClearEffects = function(slot0)
	removeAllChildren(slot0.effectPanel)
	removeAllChildren(slot0.centerPanel)

	if slot0.activeInterLayer ~= nil then
		slot0:ClearEffectInterlayer(slot0.activeInterLayer)
	end
end

slot0.PlaySoundEffect = function(slot0, slot1)
	if slot1:ShouldPlaySoundEffect() then
		slot2, slot3 = slot1:GetSoundeffect()

		slot0:DelayCall(slot3, function ()
			pg.CriMgr.GetInstance():PlaySoundEffect_V3(uv0)
		end)
	end

	if slot1:ShouldPlayVoice() then
		slot0:PlayVoice(slot1)
	elseif slot1:ShouldStopVoice() then
		slot0:StopVoice()
	end
end

slot0.StopVoice = function(slot0)
	if slot0.currentVoice then
		slot0.currentVoice:Stop(true)

		slot0.currentVoice = nil
	end
end

slot0.PlayVoice = function(slot0, slot1)
	if slot0.voiceDelayTimer then
		slot0.voiceDelayTimer:Stop()

		slot0.voiceDelayTimer = nil
	end

	slot0:StopVoice()

	slot2, slot3 = slot1:GetVoice()
	slot4 = nil
	slot0.voiceDelayTimer = slot0:CreateDelayTimer(slot3, function ()
		if uv0 then
			uv0:Stop()
		end

		if uv1.voiceDelayTimer then
			uv1.voiceDelayTimer = nil
		end

		slot0 = pg.CriMgr.GetInstance()

		slot0:PlaySoundEffect_V3(uv2, function (slot0)
			if slot0 then
				uv0.currentVoice = slot0.playback
			end
		end)
	end)
end

slot0.Reset = function(slot0, slot1, slot2, slot3)
	setActive(slot0.spAnimPanel, false)
	setActive(slot0.castPanel, false)
	setActive(slot0.bgPanel, false)

	if not slot1 or not slot1:IsDialogueMode() or not slot2 or not slot2:IsDialogueMode() then
		setActive(slot0.dialoguePanel, false)
	end

	setActive(slot0.asidePanel, false)
	setActive(slot0.curtain, false)
	setActive(slot0.flash, false)
	setActive(slot0.optionsCg.gameObject, false)
	setActive(slot0.bgGlitch, false)
	setActive(slot0.locationTr, false)

	slot0.locationTr.localPosition = slot0.locationTrPos
	slot0.locationStatus = uv0
	slot0.flashCg.alpha = 1
	slot0.goCG.alpha = 1

	slot0.animationPlayer:Stop()
	slot0:OnReset(slot1, slot2, slot3)
end

slot0.Clear = function(slot0, slot1)
	if slot0.step then
		slot0:ClearMoveNodes(slot0.step)
	end

	slot0.bgs = {}
	slot0.skipOption = nil
	slot0.step = nil
	slot0.goCG.alpha = 1
	slot0.callback = nil
	slot0.autoNext = nil
	slot0.script = nil
	slot0.bgImage.sprite = nil

	slot0:OnClear()

	if slot1 then
		slot1()
	end

	pg.DelegateInfo.New(slot0)
end

slot0.StoryEnd = function(slot0, slot1)
	setActive(slot0.iconImage.gameObject, false)

	slot0.iconImage.sprite = nil
	slot0.branchCodeList = {}
	slot0.stop = false
	slot0.pause = false

	if slot0.voiceDelayTimer then
		slot0.voiceDelayTimer:Stop()

		slot0.voiceDelayTimer = nil
	end

	if slot0.currentVoice then
		slot0.currentVoice:Stop(true)

		slot0.currentVoice = nil
	end

	slot0:ClearCheckDispatcher()
	slot0:ClearEffects()
	slot0:Clear()
	slot0:OnEnd(slot1)
end

slot0.PlayBgm = function(slot0, slot1)
	if slot1:ShouldStopBgm() then
		slot0:StopBgm()
	end

	if slot1:ShoulePlayBgm() then
		slot2, slot3, slot4 = slot1:GetBgmData()

		slot0:DelayCall(slot3, function ()
			uv0:RevertBgmVolume()
			pg.BgmMgr.GetInstance():TempPlay(uv1)
		end)

		if slot4 and slot4 > 0 then
			slot0.defaultBgmVolume = pg.CriMgr.GetInstance():getBGMVolume()

			pg.CriMgr.GetInstance():setBGMVolume(slot4)
		end
	end
end

slot0.StopBgm = function(slot0, slot1)
	slot0:RevertBgmVolume()
	pg.BgmMgr.GetInstance():StopPlay()
end

slot0.RevertBgmVolume = function(slot0)
	if slot0.defaultBgmVolume then
		pg.CriMgr.GetInstance():setBGMVolume(slot0.defaultBgmVolume)

		slot0.defaultBgmVolume = nil
	end
end

slot0.StartUIAnimations = function(slot0, slot1, slot2)
	parallelAsync({
		function (slot0)
			uv0:StartBlinkAnimation(uv1, slot0)
		end,
		function (slot0)
			uv0:StartBlinkWithColorAnimation(uv1, slot0)
		end,
		function (slot0)
			uv0:OnStartUIAnimations(uv1, slot0)
		end
	}, slot2)
end

slot0.StartBlinkAnimation = function(slot0, slot1, slot2)
	if slot1:ShouldBlink() then
		slot3 = slot1:GetBlinkData()
		slot5 = slot3.number
		slot6 = slot3.dur
		slot7 = slot3.delay
		slot8 = slot3.alpha[1]
		slot9 = slot3.alpha[2]
		slot10 = slot3.wait
		slot0.flashImg.color = slot3.black and Color(0, 0, 0) or Color(1, 1, 1)

		setActive(slot0.flash, true)

		slot11 = {}

		for slot15 = 1, slot5 do
			table.insert(slot11, function (slot0)
				slot1 = uv0

				slot1:TweenAlpha(uv0.flash, uv1, uv2, uv3 / 2, 0, function ()
					uv0:TweenAlpha(uv0.flash, uv1, uv2, uv3 / 2, uv4, uv5)
				end)
			end)
		end

		seriesAsync(slot11, function ()
			setActive(uv0.flash, false)
		end)
	end

	slot2()
end

slot0.StartBlinkWithColorAnimation = function(slot0, slot1, slot2)
	if slot1:ShouldBlinkWithColor() then
		slot3 = slot1:GetBlinkWithColorData()
		slot4 = slot3.color
		slot10 = slot4[3]
		slot11 = slot4[4]
		slot0.flashImg.color = Color(slot4[1], slot4[2], slot10, slot11)

		setActive(slot0.flash, true)

		slot6 = {}

		for slot10, slot11 in ipairs(slot3.alpha) do
			slot12 = slot11[1]
			slot13 = slot11[2]
			slot14 = slot11[3]
			slot15 = slot11[4]

			table.insert(slot6, function (slot0)
				slot1 = uv0

				slot1:TweenValue(uv0.flash, uv1, uv2, uv3, uv4, function (slot0)
					uv0.flashCg.alpha = slot0
				end, slot0)
			end)
		end

		parallelAsync(slot6, function ()
			setActive(uv0.flash, false)
		end)
	end

	slot2()
end

slot0.findTF = function(slot0, slot1, slot2)
	assert(slot0._tf, "transform should exist")

	return findTF(slot2 or slot0._tf, slot1)
end

slot0.OnStart = function(slot0, slot1)
end

slot0.OnReset = function(slot0, slot1, slot2, slot3)
	slot3()
end

slot0.OnBgUpdate = function(slot0, slot1)
end

slot0.OnInit = function(slot0, slot1, slot2, slot3)
	if slot3 then
		slot3()
	end
end

slot0.OnStartUIAnimations = function(slot0, slot1, slot2)
	if slot2 then
		slot2()
	end
end

slot0.OnEnter = function(slot0, slot1, slot2, slot3)
	if slot3 then
		slot3()
	end
end

slot0.OnWillExit = function(slot0, slot1, slot2, slot3)
	slot3()
end

slot0.OnWillClear = function(slot0, slot1)
end

slot0.OnClear = function(slot0)
end

slot0.OnEnd = function(slot0, slot1)
end

return slot0
