slot0 = class("BattleGateGuild")
ys.Battle.BattleGateGuild = slot0
slot0.__name = "BattleGateGuild"

slot0.Entrance = function(slot0, slot1)
	if getProxy(PlayerProxy):getRawData().oil < pg.guildset.use_oil.key_value then
		pg.TipsMgr.GetInstance():ShowTips(i18n("stage_beginStage_error_noResource"))

		return
	end

	slot4 = uv0.GetGuildBossMission()
	slot5 = slot4:GetMyShipIds()
	slot7 = {}

	for slot11, slot12 in ipairs(slot4:GetShipsSplitByUserID()) do
		table.insert(slot7, {
			ship_id = slot12.shipID,
			user_id = slot12.userID
		})
	end

	BeginStageCommand.SendRequest(SYSTEM_GUILD, slot5, {
		slot4:GetStageID()
	}, function (slot0)
		slot2 = getProxy(GuildProxy)
		slot3 = slot2:getData()

		slot3:getMemberById(uv2.id):AddLiveness(pg.guildset.operation_boss_guild_active.key_value)
		slot2:updateGuild(slot3)
		uv3:sendNotification(GAME.BEGIN_STAGE_DONE, {
			prefabFleet = {},
			bossId = uv0.id,
			actId = uv0.id,
			stageId = uv1,
			system = SYSTEM_GUILD,
			token = slot0.key
		})
	end, function (slot0)
		uv0:RequestFailStandardProcess(slot0)
	end, slot7)
end

slot0.Exit = function(slot0, slot1)
	slot2 = getProxy(FleetProxy)
	slot3 = slot0.statistics._battleScore
	slot4 = pg.guildset.use_oil.key_value
	slot5 = {}
	slot8 = {}

	for slot12, slot13 in pairs(uv0.GetGuildBossMission():GetMainFleet():getCommanders()) do
		table.insert(slot8, slot13.id)
	end

	for slot13, slot14 in ipairs(slot7:GetShips()) do
		table.insert(slot5, slot14.ship)
	end

	if slot0.statistics.submarineAid then
		if slot6:GetSubFleet() then
			for slot15, slot16 in ipairs(slot10:GetShips()) do
				if slot0.statistics[slot16.ship.id] then
					table.insert(slot5, slot17)
				end
			end

			for slot15, slot16 in pairs(slot10:getCommanders()) do
				table.insert(slot8, slot16.id)
			end
		else
			originalPrint("finish stage error: can not find submarin fleet.")
		end
	end

	slot10 = 0
	slot11 = 0

	for slot15, slot16 in ipairs(slot5) do
		if slot10 < slot0.statistics[slot16.id].output then
			slot11 = slot16.id
			slot10 = slot17.output
		end
	end

	slot12 = uv0.GeneralPackage(slot0, slot5)
	slot12.commander_id_list = slot8

	uv0.SendRequest(slot1, slot12, function (slot0)
		uv0.statistics.mvpShipID = uv1
		slot1, slot2 = uv2:GeneralLoot(slot0)

		uv6.GeneralPlayerCosume(SYSTEM_GUILD, ys.Battle.BattleConst.BattleScore.C < uv3, uv7, slot0.player_exp, exFlag)
		uv6.UpdateGuildBossMission()
		uv2:sendNotification(GAME.FINISH_STAGE_DONE, {
			system = SYSTEM_GUILD,
			statistics = uv0.statistics,
			score = uv3,
			drops = slot1,
			commanderExps = uv2.GenerateCommanderExp(slot0, uv4, uv5:GetSubFleet()),
			result = slot0.result,
			extraDrops = slot2
		})
	end)
end

slot0.SendRequest = function(slot0, slot1, slot2)
	slot3 = pg.ConnectionMgr.GetInstance()

	slot3:Send(40003, slot1, 40004, function (slot0)
		if slot0.result == 0 or slot0.result == 1030 then
			uv0(slot0)
		elseif slot0.result == 20 then
			pg.MsgboxMgr.GetInstance():ShowMsgBox({
				hideNo = true,
				content = i18n("guild_battle_result_boss_is_death"),
				onYes = function ()
					pg.m02:sendNotification(GAME.QUIT_BATTLE)
				end
			})
		elseif slot0.result == 4 then
			pg.m02:sendNotification(GAME.QUIT_BATTLE)
		else
			uv1:RequestFailStandardProcess(slot0)
		end
	end)
end

slot0.GetGuildBossMission = function()
	slot1 = getProxy(GuildProxy):getData():GetActiveEvent()

	assert(slot1)

	slot2 = slot1:GetBossMission()

	assert(slot2)

	return slot2
end

slot0.UpdateGuildBossMission = function()
	slot0 = getProxy(GuildProxy)
	slot1 = slot0:getData()
	slot2 = slot1:GetActiveEvent()

	assert(slot2)

	slot3 = slot2:GetBossMission()

	assert(slot3)
	slot3:ReduceDailyCnt()
	slot0:ResetBossRankTime()
	slot0:ResetRefreshBossTime()
	slot0:updateGuild(slot1)
end

slot0.GeneralPlayerCosume = function(slot0, slot1, slot2, slot3, slot4)
	slot5 = getProxy(PlayerProxy)
	slot6 = slot5:getData()

	slot6:addExp(slot3)
	slot6:consume({
		gold = 0,
		oil = slot2
	})
	slot5:updatePlayer(slot6)
end

slot0.GeneralPackage = function(slot0, slot1)
	slot2 = 0
	slot3 = {}
	slot4 = {}
	slot8 = slot0.system + slot0.stageId + slot0.statistics._battleScore
	slot9 = getProxy(PlayerProxy):getRawData().id

	for slot13, slot14 in ipairs(slot1) do
		if slot0.statistics[slot14.id] then
			slot16 = GuildAssaultFleet.GetRealId(slot15.id)
			slot18 = math.floor(slot15.bp)
			slot19 = math.floor(slot15.output)
			slot21 = math.floor(slot15.maxDamageOnce)

			table.insert(GuildAssaultFleet.GetUserId(slot15.id) ~= slot9 and slot4 or slot3, {
				ship_id = slot16,
				hp_rest = slot18,
				damage_cause = slot19,
				damage_caused = math.max(0, math.floor(slot15.damage)),
				max_damage_once = slot21,
				ship_gear_score = math.floor(slot15.gearScore)
			})

			slot8 = slot8 + slot16 + slot18 + slot19 + slot21
			slot2 = slot2 + slot14:getShipCombatPower()
		end
	end

	slot10, slot11 = GetBattleCheckResult(slot8, slot0.token, slot0.statistics._totalTime)
	slot12 = {}

	for slot16, slot17 in ipairs(slot0.statistics._enemyInfoList) do
		table.insert(slot12, {
			enemy_id = slot17.id,
			damage_taken = slot17.damage,
			total_hp = slot17.totalHp
		})
	end

	return {
		system = slot5,
		data = slot6,
		score = slot7,
		key = slot10,
		statistics = slot3,
		otherstatistics = slot4,
		kill_id_list = slot0.statistics.kill_id_list,
		total_time = slot0.statistics._totalTime,
		bot_percentage = slot0.statistics._botPercentage,
		extra_param = slot2,
		file_check = slot11,
		enemy_info = slot12,
		data2 = {},
		auto_before = slot0.statistics._autoInit,
		auto_switch_time = slot0.statistics._autoCount,
		auto_after = math.fmod(math.fmod(slot0.statistics._autoCount, 2) + slot0.statistics._autoInit, 2)
	}
end

return slot0
