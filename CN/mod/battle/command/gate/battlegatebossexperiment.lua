slot0 = class("BattleGateBossExperiment")
ys.Battle.BattleGateBossExperiment = slot0
slot0.__name = "BattleGateBossExperiment"

slot0.Entrance = function(slot0, slot1)
	slot4 = slot0.stageId

	slot1:sendNotification(GAME.BEGIN_STAGE_DONE, {
		mainFleetId = slot0.mainFleetId,
		actId = slot0.actId,
		prefabFleet = ys.Battle.BattleDataFunction.GetDungeonTmpDataByID(pg.expedition_data_template[slot4].dungeon_id).fleet_prefab,
		stageId = slot4,
		system = SYSTEM_BOSS_EXPERIMENT
	})
end

slot0.Exit = function(slot0, slot1)
	slot1:sendNotification(GAME.FINISH_STAGE_DONE, {
		system = SYSTEM_BOSS_EXPERIMENT,
		statistics = slot0.statistics,
		score = ys.Battle.BattleConst.BattleScore.S,
		commanderExps = {}
	})
end

return slot0
