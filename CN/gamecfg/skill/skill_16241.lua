return {
	uiEffect = "",
	name = "",
	cd = 0,
	picture = "0",
	desc = "",
	painting = 0,
	id = 16241,
	castCV = "",
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
			target_choise = {
				"TargetAllHelp",
				"TargetPlayerMainFleet",
				"TargetNationality"
			},
			arg_list = {
				buff_id = 16242,
				nationality = 1
			}
		}
	}
}
