slot0 = class("BattleGateCardPuzzle")
ys.Battle.BattleGateCardPuzzle = slot0
slot0.__name = "BattleGateCardPuzzle"

slot0.Entrance = function(slot0, slot1)
	slot3 = ys.Battle.BattleDataFunction.GetPuzzleDungeonTemplate(slot0.combatID)
	slot4 = slot3.dungeon_id
	slot5 = {
		CardPuzzleShip.New({
			configId = slot3.scout_id
		}),
		CardPuzzleShip.New({
			configId = slot3.main_id
		})
	}
	slot6 = slot3.deck
	slot7 = {}

	for slot11, slot12 in ipairs(slot3.relic) do
		table.insert(slot7, CardPuzzleGift.New({
			configId = slot12
		}))
	end

	(function (slot0)
		uv5:sendNotification(GAME.BEGIN_STAGE_DONE, {
			hp = 1,
			cardPuzzleFleet = uv0,
			prefabFleet = {},
			cards = uv1,
			relics = uv2,
			stageId = uv3,
			system = SYSTEM_CARDPUZZLE,
			puzzleCombatID = uv4
		})
	end)()
end

slot0.Exit = function(slot0, slot1)
	slot2 = slot0.statistics._battleScore

	print(slot2)

	if ys.Battle.BattleConst.BattleScore.S <= slot2 then
		slot1:sendNotification(GAME.ACT_CARD_PUZZLE, {
			cmd = 1,
			activity_id = getProxy(ActivityProxy):getActivityByType(ActivityConst.ACTIVITY_TYPE_CARD_PUZZLE) and slot3.id,
			arg1 = slot0.puzzleCombatID
		})
	end

	slot1:sendNotification(GAME.FINISH_STAGE_DONE, {
		system = SYSTEM_CARDPUZZLE,
		score = slot2
	})
end

return slot0
