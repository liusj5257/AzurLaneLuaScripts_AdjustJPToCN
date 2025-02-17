slot0 = class("LanternRiddlesController")

slot0.Ctor = function(slot0)
	slot0.model = LanternRiddlesModel.New(slot0)
	slot0.view = LanternRiddlesView.New(slot0)
end

slot0.SetCallBack = function(slot0, slot1, slot2, slot3, slot4)
	slot0.exitCallback = slot1
	slot0.onHome = slot2
	slot0.onSuccess = slot3
	slot0.onSaveData = slot4
end

slot0.SetUp = function(slot0, slot1)
	slot0.model:UpdateData(slot1)
	slot0.view:UpdateDay(slot0.model.finishCount)
	slot0.view:InitLanternRiddles(slot0.model:GetQuestiones())
end

slot0.SelectAnswer = function(slot0, slot1, slot2)
	slot3 = false

	if slot0.model:IsRight(slot1, slot2) then
		slot3 = true

		slot0.model:UpdateRightAnswerFlag(slot1)

		if slot0.onSuccess then
			slot0.onSuccess()
		end

		slot0.view:UpdateDay(slot0.model.finishCount)

		if slot0.model.unlockCount <= 0 then
			slot0.view:RefreshLanterRiddles(slot0.model.questiones)
		end
	else
		slot0.model:UpdateWrongAnswerFlag(slot1, slot2)
	end

	if slot0.onSaveData then
		slot0.onSaveData()
	end

	slot0.view:OnUpdateAnswer(slot0.model:GetQuestion(slot1), slot2, slot3)
end

slot0.GetLockTime = function(slot0)
	return slot0.model:GetLockTime()
end

slot0.ExitGame = function(slot0)
	if slot0.exitCallback then
		slot0.exitCallback()
	end
end

slot0.ExitGameAndGoHome = function(slot0)
	if slot0.onHome then
		slot0.onHome()
	end
end

slot0.GetSaveData = function(slot0)
	slot1 = {}

	for slot5, slot6 in ipairs(slot0.model.questiones) do
		table.insert(slot1, slot6.nextTime)
	end

	table.insert(slot1, slot0.model.lockTime)

	slot2 = slot0.model.finishCount

	for slot6, slot7 in ipairs(slot0.model.finishList) do
		if slot2 > 0 then
			table.insert(slot1, slot7)

			slot2 = slot2 - 1
		end
	end

	return slot1
end

slot0.Dispose = function(slot0)
	slot0.model:Dispose()
	slot0.view:Dispose()
end

return slot0
