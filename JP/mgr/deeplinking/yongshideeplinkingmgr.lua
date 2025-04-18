pg = pg or {}
slot0 = pg
slot0.YongshiDeepLinkingMgr = singletonClass("YongshiDeepLinkingMgr")
slot1 = slot0.YongshiDeepLinkingMgr
slot2 = true

slot3 = function(slot0)
	if uv0 then
		originalPrint(slot0)
	end
end

slot1.SetData = function(slot0, slot1)
	uv0("SetData......")

	slot0.deepLinking = slot1

	slot0:SwitchScene()
end

slot1.ShouldSwitchScene = function(slot0)
	if slot0.deepLinking == nil or slot0.deepLinking:IsEmpty() then
		uv0("deepLinking is empty")

		return false
	end

	if not uv1.m02 then
		uv0("game is not start")

		return false
	end

	if not getProxy(ContextProxy):getCurrentContext() then
		uv0("game is not start")

		return false
	end

	if slot2.mediator == LoginMediator then
		uv0("player is not created")

		return false
	end

	if slot2.mediator == CombatLoadMediator or slot2.mediator == BattleMediator then
		uv0("game is in battle")
		slot0:Clear()

		return false
	end

	return true
end

slot4 = function(slot0, slot1)
	uv0("Switch......" .. slot0 .. "-" .. slot1)

	if slot0 == "1" then
		uv1.m02:sendNotification(GAME.GO_SCENE, SCENE.DOCKYARD)
	end
end

slot1.SwitchScene = function(slot0)
	uv0("SwitchScene......")

	if slot0:ShouldSwitchScene() then
		uv1(slot0.deepLinking.page, slot0.deepLinking.arg)
		slot0:Clear()
	end
end

slot1.Clear = function(slot0)
	uv0("Clear......")
	slot0.deepLinking:Clear()

	slot0.deepLinking = nil
end
