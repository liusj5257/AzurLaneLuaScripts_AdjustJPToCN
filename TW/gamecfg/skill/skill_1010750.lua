return {
	uiEffect = "",
	name = "The Nick +",
	cd = 0,
	picture = "0",
	desc = "The Nick",
	painting = 1,
	id = 1010750,
	castCV = "skill",
	aniEffect = {
		effect = "jineng",
		offset = {
			0,
			-2,
			0
		}
	},
	effect_list = {
		{
			targetAniEffect = "",
			casterAniEffect = "",
			type = "BattleSkillAddBuff",
			target_choise = "TargetSelf",
			arg_list = {
				buff_id = 1010751
			}
		},
		{
			targetAniEffect = "",
			casterAniEffect = "",
			type = "BattleSkillAddBuff",
			target_choise = {
				"TargetAllHarm",
				"TargetRandom"
			},
			arg_list = {
				buff_id = 1010752,
				randomCount = 1
			}
		}
	}
}
