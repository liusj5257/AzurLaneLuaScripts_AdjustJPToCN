return {
	uiEffect = "",
	name = "",
	cd = 0,
	picture = "0",
	desc = "属性提升",
	painting = 1,
	id = 151141,
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
				buff_id = 151142
			}
		}
	}
}
