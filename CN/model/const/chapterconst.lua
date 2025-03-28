slot0 = class("ChapterConst")
slot0.ExitFromChapter = 0
slot0.ExitFromMap = 1
slot0.TypeLagacy = 1
slot0.TypeRange = 2
slot0.TypeTransport = 3
slot0.TypeMainSub = 4
slot0.TypeExtra = 5
slot0.TypeSpHunt = 7
slot0.TypeSpBomb = 8
slot0.TypeDefence = 10
slot0.TypeDOALink = 11
slot0.TypeMultiStageBoss = 12
slot0.SubjectPlayer = 1
slot0.SubjectChampion = 2
slot0.MaxRow = 10
slot0.MaxColumn = 20
slot0.MaxStep = 10000
slot0.AttachNone = 0
slot0.AttachBorn = 1
slot0.AttachBox = 2
slot0.AttachSupply = 3
slot0.AttachElite = 4
slot0.AttachAmbush = 5
slot0.AttachEnemy = 6
slot0.AttachTorpedo_Enemy = 7
slot0.AttachBoss = 8
slot0.AttachStory = 9
slot0.AttachAreaBoss = 11
slot0.AttachChampion = 12
slot0.AttachTorpedo_Fleet = 14
slot0.AttachChampionPatrol = 15
slot0.AttachBorn_Sub = 16
slot0.AttachTransport = 17
slot0.AttachTransport_Target = 18
slot0.AttachChampionSub = 19
slot0.AttachOni = 20
slot0.AttachOni_Target = 21
slot0.AttachBomb_Enemy = 24
slot0.AttachBarrier = 25
slot0.AttachHugeSupply = 26
slot0.AttachLandbase = 100
slot0.AttachEnemyTypes = {
	slot0.AttachEnemy,
	slot0.AttachAmbush,
	slot0.AttachElite,
	slot0.AttachBoss,
	slot0.AttachAreaBoss,
	slot0.AttachBomb_Enemy,
	slot0.AttachChampion
}

slot0.IsEnemyAttach = function(slot0)
	return table.contains(uv0.AttachEnemyTypes, slot0)
end

slot0.IsBossCell = function(slot0)
	if slot0.attachment == uv0.AttachBoss then
		return true
	end

	if not uv0.IsEnemyAttach(slot0.attachment) then
		return false
	end

	if not pg.expedition_data_template[slot0.attachmentId] then
		return
	end

	return slot1.type == uv0.ExpeditionTypeBoss or slot1.type == uv0.ExpeditionTypeMulBoss
end

slot0.GetDestroyFX = function(slot0)
	if not pg.expedition_data_template[slot0.attachmentId] or slot1.SLG_destroy_FX == "" then
		return "huoqiubaozha"
	else
		return slot1.SLG_destroy_FX
	end
end

slot0.Story = 1
slot0.StoryObstacle = 2
slot0.StoryTrigger = 3
slot0.EventTeleport = 4
slot0.CellFlagActive = 0
slot0.CellFlagDisabled = 1
slot0.CellFlagAmbush = 2
slot0.CellFlagTriggerActive = 3
slot0.CellFlagTriggerDisabled = 4
slot0.CellFlagDiving = 5
slot0.EvtType_Poison = 1
slot0.EvtType_AdditionalFloor = 2
slot0.FlagBanaiAirStrike = 4
slot0.FlagPoison = 5
slot0.FlagLava = 10
slot0.FlagNightmare = 9
slot0.FlagMissleAiming = 12
slot0.FlagWeatherNight = 101
slot0.FlagWeatherFog = 102
slot0.ActType_Poison = 1
slot0.ActType_SubmarineHunting = 2
slot0.ActType_TargetDown = 3
slot0.ActType_Expel = 4
slot0.BoxBarrier = 0
slot0.BoxDrop = 1
slot0.BoxStrategy = 2
slot0.BoxAirStrike = 4
slot0.BoxEnemy = 5
slot0.BoxSupply = 6
slot0.BoxTorpedo = 7
slot0.BoxBanaiDamage = 8
slot0.BoxLavaDamage = 9
slot0.LBIdle = 0
slot0.LBCoastalGun = 1
slot0.LBHarbor = 2
slot0.LBDock = 3
slot0.LBAntiAir = 4
slot0.LBIDAirport = 13
slot0.RoundPlayer = 0
slot0.RoundEnemy = 1
slot0.AIEasy = 1
slot0.AIStayAround = 2
slot0.AIPatrol = 3
slot0.AIProtect = 4
slot0.AIDog = 5
slot0.StgTypeForm = 1
slot0.StgTypeConsume = 2
slot0.StgTypeConst = 3
slot0.StgTypePassive = 4
slot0.StgTypeBindChapter = 5
slot0.StgTypeBindFleetPassive = 6
slot0.StgTypeBindSupportConsume = 7
slot0.StgTypeStatus = 10
slot0.StrategyAmmoRich = 10001
slot0.StrategyAmmoPoor = 10002
slot0.StrategyHuntingRange = -1
slot0.StrategySubAutoAttack = -2
slot0.StrategyFormSignleLine = 1
slot0.StrategyFormDoubleLine = 2
slot0.StrategyFormCircular = 3
slot0.StrategyRepair = 4
slot0.StrategyExchange = 9
slot0.StrategyCallSubOutofRange = 10
slot0.StrategySubTeleport = 11
slot0.StrategySonarDetect = 12
slot0.StrategyMissileStrike = 18
slot0.StrategyAirSupport = 1000
slot0.StrategyExpel = 1001
slot0.StrategyAirSupportFoe = 94
slot0.StrategyAirSupportFriendly = 95
slot0.StrategyIntelligenceRecorded = 96
slot0.StrategyBuffTypeNormal = 0
slot0.StrategyBuffTypeOnlyBoss = 1
slot0.StrategyForms = {
	slot0.StrategyFormSignleLine,
	slot0.StrategyFormDoubleLine,
	slot0.StrategyFormCircular
}
slot0.StrategyPresents = {
	slot0.StrategyRepair
}
slot0.QuadStateFrozen = 1
slot0.QuadStateNormal = 2
slot0.QuadStateBarrierSetting = 3
slot0.QuadStateTeleportSub = 4
slot0.QuadStateMissileStrike = 5
slot0.QuadStateAirSuport = 6
slot0.QuadStateExpel = 7
slot0.PlaneName = "plane"
slot0.LineCross = 2
slot0.CellEaseOutAlpha = 0.01
slot0.CellNormalColor = Color.white
slot0.CellTargetColor = Color.green
slot0.ChildItem = "item"
slot0.ChildAttachment = "attachment"
slot0.TraitNone = 0
slot0.TraitLurk = 1
slot0.TraitVirgin = 2

slot0.NeedMarkAsLurk = function(slot0)
	if slot0.flag ~= ChapterConst.CellFlagActive then
		return false
	end

	if slot0.attachment == uv0.AttachBox then
		slot1 = pg.box_data_template[slot0.attachmentId]

		assert(slot1, "box_data_template not exist: " .. slot0.attachmentId)

		if slot1.type == uv0.BoxStrategy and pg.strategy_data_template[slot1.effect_id].type == ChapterConst.StgTypeBindFleetPassive then
			return nil
		end

		return slot1.type == uv0.BoxDrop or slot1.type == uv0.BoxStrategy or slot1.type == uv0.BoxSupply or slot1.type == uv0.BoxEnemy
	elseif uv0.IsBossCell(slot0) then
		return true
	elseif slot0.attachment == uv0.AttachAmbush then
		return false
	elseif uv0.IsEnemyAttach(slot0.attachment) then
		return true
	end
end

slot0.NeedEasePathCell = function(slot0)
	if slot0.attachment == uv0.AttachNone then
		return true
	elseif slot0.attachment == uv0.AttachAmbush then
		if slot0.flag ~= ChapterConst.CellFlagActive then
			return true
		end
	elseif slot0.attachment == uv0.AttachEnemy or slot0.attachment == uv0.AttachElite then
		if slot0.flag == ChapterConst.CellFlagDisabled then
			return true
		end
	elseif slot0.attachment == uv0.AttachSupply and slot0.attachmentId <= 0 then
		return true
	elseif slot0.attachment == uv0.AttachBox then
		slot1 = pg.box_data_template[slot0.attachmentId]

		assert(slot1, "box_data_template not exist: " .. slot0.attachmentId)

		if slot1.type == uv0.BoxAirStrike or slot1.type == uv0.BoxTorpedo then
			return true
		elseif (slot1.type == uv0.BoxDrop or slot1.type == uv0.BoxStrategy or slot1.type == uv0.BoxEnemy or slot1.type == uv0.BoxSupply) and slot0.flag == ChapterConst.CellFlagDisabled then
			return true
		end
	elseif slot0.attachment == uv0.AttachStory then
		if slot0.flag ~= ChapterConst.CellFlagActive and (slot0.flag ~= ChapterConst.CellFlagTriggerActive or slot0.data ~= uv0.StoryObstacle) then
			return true
		end
	elseif slot0.attachment == uv0.AttachBarrier then
		return true
	end

	return false
end

slot0.NeedClearStep = function(slot0)
	if slot0.attachment == uv0.AttachAmbush and slot0.flag == ChapterConst.CellFlagAmbush then
		return true
	end

	if slot0.attachment == uv0.AttachBox then
		slot1 = pg.box_data_template[slot0.attachmentId]

		assert(slot1, "box_data_template not exist: " .. slot0.attachmentId)

		if slot1.type == uv0.BoxAirStrike then
			return true
		end
	end

	return false
end

slot0.AchieveType1 = 1
slot0.AchieveType2 = 2
slot0.AchieveType3 = 3
slot0.AchieveType4 = 4
slot0.AchieveType5 = 5
slot0.AchieveType6 = 6

slot0.IsAchieved = function(slot0)
	slot1 = false

	return (slot0.type == uv0.AchieveType4 or slot0.type == uv0.AchieveType5) and slot0.count >= 1 or slot0.config <= slot0.count
end

slot0.GetAchieveDesc = function(slot0, slot1)
	slot2 = false

	if _.detect(slot1.achieves, function (slot0)
		return slot0.type == uv0
	end).type == uv0.AchieveType1 then
		return "击破敌方旗舰"
	elseif slot3.type == uv0.AchieveType2 then
		return string.format("击破护卫舰队（%d/%d）", math.min(slot3.count, slot3.config), slot3.config)
	elseif slot3.type == uv0.AchieveType3 then
		return "击破所有敌舰"
	elseif slot3.type == uv0.AchieveType4 then
		return string.format("出击人数不多于%d", slot3.config)
	elseif slot3.type == uv0.AchieveType5 then
		return string.format("出击舰娘不包含XX", ShipType.Type2Name(slot3.config))
	elseif slot3.type == uv0.AchieveType6 then
		return "Full Combo完成关卡"
	end

	return slot2
end

slot0.OpRetreat = 0
slot0.OpMove = 1
slot0.OpBox = 2
slot0.OpAmbush = 4
slot0.OpStrategy = 5
slot0.OpRepair = 6
slot0.OpSupply = 7
slot0.OpEnemyRound = 8
slot0.OpSubState = 9
slot0.OpStory = 10
slot0.OpBarrier = 16
slot0.OpSubTeleport = 19
slot0.OpPreClear = 30
slot0.OpRequest = 49
slot0.OpSwitch = 98
slot0.OpSkipBattle = 99
slot0.DirtyAchieve = 1
slot0.DirtyFleet = 2
slot0.DirtyAttachment = 4
slot0.DirtyStrategy = 8
slot0.DirtyChampion = 16
slot0.DirtyAutoAction = 32
slot0.DirtyCellFlag = 64
slot0.DirtyBase = 128
slot0.DirtyChampionPosition = 256
slot0.DirtyFloatItems = 512
slot0.KizunaJammingEngage = 1
slot0.KizunaJammingDodge = 2
slot0.StatusDay = 3
slot0.StatusNight = 4
slot0.StatusAirportOutControl = 5
slot0.StatusAirportUnderControl = 6
slot0.StatusSunrise = 7
slot0.StatusSunset = 8
slot0.StatusMaze1 = 9
slot0.StatusMaze2 = 10
slot0.StatusMaze3 = 11
slot0.StatusDPM_KASTHA_FOE = 12
slot0.StatusDPM_KASTHA_FRIEND = 13
slot0.StatusDPM_PANYIA_FOE = 14
slot0.StatusDPM_PANYIA_FRIEND = 15
slot0.StatusDPM_MRD_FOE = 16
slot0.StatusDPM_MRD_FRIEND = 17
slot0.StatusDPM_VITA_FOE = 18
slot0.StatusDPM_VITA_FRIEND = 19
slot0.StatusLIGHTHOUSEACTIVE = 20
slot0.StatusSSSSSyberSquadSupportIdle = 21
slot0.StatusSSSSSyberSquadSupportActive = 22
slot0.StatusSSSSKaijuSupportIdle = 23
slot0.StatusSSSSKaijuSupportActive = 24
slot0.StatusMissile1 = 30
slot0.StatusMissile2 = 31
slot0.StatusMissile3 = 32
slot0.StatusMissileInit = 33
slot0.StatusMissile1B = 34
slot0.StatusMissile2B = 35
slot0.StatusMissile3B = 36
slot0.StatusMissileInitB = 37
slot0.StatusMaoxiv3 = 38
slot0.StatusGonghai = 39
slot0.StatusGonghai = 40
slot0.StatusGonghai = 41
slot0.StatusMusashiGame1 = 42
slot0.StatusMusashiGame2 = 43
slot0.StatusMusashiGame3 = 44
slot0.StatusMusashiGame4 = 45
slot0.StatusMusashiGame5 = 46
slot0.StatusMusashiGame6 = 47
slot0.StatusMusashiGame7 = 48
slot0.StatusMusashiGame8 = 49
slot0.StatusDefaultList = {
	0
}
slot0.Status2Stg = setmetatable({}, {
	__index = function (slot0, slot1)
		slot3 = pg.chapter_status_effect[slot1] and slot2.strategy or 0

		return slot3 ~= 0 and slot3 or nil
	end
})
slot0.Buff2Stg = {}

slot1 = function(slot0, slot1)
	if slot1.buff_id == 0 then
		return
	end

	uv0.Buff2Stg[slot1.buff_id] = slot0
end

for slot5, slot6 in ipairs(pg.strategy_data_template.all) do
	slot1(slot6, pg.strategy_data_template[slot6])
end

slot0.HpGreen = 3000

slot0.GetAmbushDisplay = function(slot0)
	slot1, slot2 = nil

	if not slot0 then
		slot1 = pg.gametip.ambush_display_0.tip
		slot2 = Color.New(0.9607843137254902, 0.3764705882352941, 0.2823529411764706)
	elseif slot0 <= 0 then
		slot1 = pg.gametip.ambush_display_1.tip
		slot2 = Color.New(0.6627450980392157, 0.9607843137254902, 0.2823529411764706)
	elseif slot0 < 0.1 then
		slot1 = pg.gametip.ambush_display_2.tip
		slot2 = Color.New(0.6627450980392157, 0.9607843137254902, 0.2823529411764706)
	elseif slot0 < 0.2 then
		slot1 = pg.gametip.ambush_display_3.tip
		slot2 = Color.New(0.6627450980392157, 0.9607843137254902, 0.2823529411764706)
	elseif slot0 < 0.33 then
		slot1 = pg.gametip.ambush_display_4.tip
		slot2 = Color.New(0.984313725490196, 0.788235294117647, 0.21568627450980393)
	elseif slot0 < 0.5 then
		slot1 = pg.gametip.ambush_display_5.tip
		slot2 = Color.New(0.9607843137254902, 0.3764705882352941, 0.2823529411764706)
	else
		slot1 = pg.gametip.ambush_display_6.tip
		slot2 = Color.New(0.9607843137254902, 0.3764705882352941, 0.2823529411764706)
	end

	return slot1, slot2
end

slot0.ShipMoveAction = "move"
slot0.ShipIdleAction = "normal"
slot0.ShipSwimAction = "swim"
slot0.ShipStepDuration = 0.5
slot0.ShipStepQuickPlayScale = 0.5
slot0.ShipMoveTailLength = 2

slot0.GetRepairParams = function()
	return 1, 3, 100
end

slot0.GetShamRepairParams = function()
	return 1, 3, 100
end

slot0.AmmoRich = 4
slot0.AmmoPoor = 0
slot0.ExpeditionAILair = 6
slot0.ExpeditionTypeMulBoss = 94
slot0.ExpeditionTypeUnTouchable = 97
slot0.ExpeditionTypeBoss = 99
slot0.EnemySize = {
	1,
	2,
	3,
	1,
	2,
	3,
	1,
	2,
	3,
	1,
	2,
	3,
	3,
	[96.0] = 100,
	[98.0] = 100,
	[99.0] = 99,
	[95.0] = 98,
	[97.0] = 100,
	[94.0] = 99
}
slot0.EnemyPreference = {
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	[96.0] = 1,
	[98.0] = 9,
	[99.0] = 99,
	[95.0] = 8,
	[97.0] = 100,
	[94.0] = 99
}
slot0.ShamMoneyItem = 59900
slot0.MarkHuntingRange = 1
slot0.MarkBomb = 2
slot0.MarkCoastalGun = 3
slot0.MarkEscapeGrid = 4
slot0.MarkBanaiAirStrike = 5
slot0.MarkMovePathArrow = 6
slot0.MarkLava = 7
slot0.MarkHideNight = 8
slot0.MarkNightMare = 9
slot0.ReasonVictory = 1
slot0.ReasonDefeat = 2
slot0.ReasonVictoryOni = 3
slot0.ReasonDefeatOni = 4
slot0.ReasonDefeatBomb = 5
slot0.ReasonOutTime = 8
slot0.ReasonActivityOutTime = 9
slot0.ReasonDefeatDefense = 10
slot0.ForbiddenNone = 0
slot0.ForbiddenRight = 1
slot0.ForbiddenLeft = 2
slot0.ForbiddenDown = 4
slot0.ForbiddenUp = 8
slot0.ForbiddenRow = 3
slot0.ForbiddenColumn = 12
slot0.ForbiddenAll = 15
slot0.PriorityPerRow = 100
slot0.PriorityMin = -10000
slot0.CellPriorityNone = 0 + slot0.PriorityMin
slot0.CellPriorityAttachment = 1 + slot0.PriorityMin
slot0.CellPriorityLittle = 2 + slot0.PriorityMin
slot0.CellPriorityEnemy = 3 + slot0.PriorityMin
slot0.CellPriorityFleet = 3 + slot0.PriorityMin
slot0.CellPriorityUpperEffect = 5 + slot0.PriorityMin
slot0.CellPriorityTopMark = 6 + slot0.PriorityMin
slot0.PriorityMax = 10000 + slot0.PriorityMin
slot0.LayerWeightMap = -999
slot0.LayerWeightMapAnimation = slot0.LayerWeightMap + 1
slot0.TemplateChampion = "tpl_champion"
slot0.TemplateEnemy = "tpl_enemy"
slot0.TemplateOni = "tpl_oni"
slot0.TemplateFleet = "tpl_ship"
slot0.TemplateSub = "tpl_sub"
slot0.TemplateTransport = "tpl_transport"
slot0.AirDominanceStrategyBuffType = 1001
slot0.AirDominance = {
	[0] = {
		name = pg.gametip.no_airspace_competition.tip,
		color = Color.New(1, 1, 1)
	},
	{
		name = pg.strategy_data_template[pg.gameset.air_dominance_level_5.key_value].name,
		StgId = pg.gameset.air_dominance_level_5.key_value,
		color = Color.New(0.9921568627450981, 0.4, 0.39215686274509803)
	},
	{
		name = pg.strategy_data_template[pg.gameset.air_dominance_level_4.key_value].name,
		StgId = pg.gameset.air_dominance_level_4.key_value,
		color = Color.New(0.9568627450980393, 0.5647058823529412, 0.34901960784313724)
	},
	{
		name = pg.strategy_data_template[pg.gameset.air_dominance_level_3.key_value].name,
		StgId = pg.gameset.air_dominance_level_3.key_value,
		color = Color.New(0.9568627450980393, 0.8470588235294118, 0.23921568627450981)
	},
	{
		name = pg.strategy_data_template[pg.gameset.air_dominance_level_2.key_value].name,
		StgId = pg.gameset.air_dominance_level_2.key_value,
		color = Color.New(0.7333333333333333, 0.7725490196078432, 0.2)
	},
	{
		name = pg.strategy_data_template[pg.gameset.air_dominance_level_1.key_value].name,
		StgId = pg.gameset.air_dominance_level_1.key_value,
		color = Color.New(0.615686274509804, 0.9215686274509803, 0.14901960784313725)
	}
}

slot0.IsAtelierMap = function(slot0)
	return slot0:getConfig("on_activity") == ActivityConst.RYZA_MAP_ACT_ID
end

slot0.AUTOFIGHT_STOP_REASON = {
	DOCK_OVERLOADED = 2,
	OIL_LACK = 3,
	SHIP_ENERGY_LOW = 6,
	MANUAL = 1,
	GOLD_MAX = 4,
	BATTLE_FAILED = 5,
	SETTLEMENT = 7,
	UNKNOWN = 0
}
chapter_skip_battle = PlayerPrefs.GetInt("chapter_skip_battle") or 0

switch_chapter_skip_battle = function()
	chapter_skip_battle = 1 - chapter_skip_battle

	PlayerPrefs.SetInt("chapter_skip_battle", chapter_skip_battle)
	PlayerPrefs.Save()
	pg.TipsMgr.GetInstance():ShowTips(chapter_skip_battle == 1 and "已开启战斗跳略" or "已关闭战斗跳略")
end

return slot0
