return {
	uiEffect = "",
	name = "冲击之盾",
	cd = 0,
	picture = "0",
	desc = "冲击之盾",
	painting = 1,
	id = 150730,
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
				buff_id = 150731
			}
		}
	}
}
