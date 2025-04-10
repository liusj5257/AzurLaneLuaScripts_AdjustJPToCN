slot0 = class("SkillInfoMediator", import("..base.ContextMediator"))
slot0.WARP_TO_TACTIC = "SkillInfoMediator:WARP_TO_TACTIC"
slot0.WARP_TO_META_TACTICS = "SkillInfoMediator:WARP_TO_METATASK"

slot0.register = function(slot0)
	slot0:bind(uv0.WARP_TO_TACTIC, function (slot0)
		slot1 = getProxy(NavalAcademyProxy)
		slot2 = slot1:getStudents()
		slot3 = 0
		slot4 = 0

		for slot9 = 1, slot1.MAX_SKILL_CLASS_NUM do
			if slot2[slot9] then
				slot3 = slot3 + 1
			else
				slot4 = slot9

				break
			end
		end

		if slot1:getSkillClassNum() <= slot3 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("tactics_lesson_full"))
			uv0.viewComponent:close()

			return
		end

		if table.getCount(getProxy(BagProxy):getItemsByType(Item.LESSON_TYPE) or {}) <= 0 then
			pg.TipsMgr.GetInstance():ShowTips(i18n("tactics_no_lesson"))
			uv0.viewComponent:close()

			return
		end

		for slot12, slot13 in pairs(slot2) do
			if slot13.shipId == uv0.contextData.shipId then
				pg.TipsMgr.GetInstance():ShowTips(i18n("tactics_lesson_repeated"))
				uv0.viewComponent:close()

				return
			end
		end

		uv0.viewComponent:close()
		uv0:sendNotification(GAME.GO_SCENE, SCENE.NAVALACADEMYSCENE, {
			warp = NavalAcademyScene.WARP_TO_TACTIC,
			shipToLesson = {
				shipId = uv0.contextData.shipId,
				skillIndex = uv0.contextData.index,
				index = slot4
			}
		})
	end)
	slot0:bind(uv0.WARP_TO_META_TACTICS, function (slot0, slot1)
		uv0.viewComponent:close()
		uv0:sendNotification(GAME.GO_SCENE, SCENE.METACHARACTER, {
			autoOpenTactics = true,
			autoOpenShipConfigID = slot1
		})
	end)
end

slot0.listNotificationInterests = function(slot0)
	return {}
end

slot0.handleNotification = function(slot0, slot1)
	slot2 = slot1:getName()
	slot3 = slot1:getBody()
end

return slot0
