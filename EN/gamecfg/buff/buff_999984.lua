return {
	init_effect = "",
	name = "教程维修",
	time = 2,
	picture = "",
	desc = "",
	stack = 1,
	id = 999984,
	last_effect = "Health",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAttach"
			},
			arg_list = {
				skill_id = 999984,
				target = "TargetSelf"
			}
		}
	}
}
