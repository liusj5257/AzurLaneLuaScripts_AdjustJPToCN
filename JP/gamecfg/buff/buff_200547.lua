return {
	init_effect = "",
	name = "2023克莱蒙梭活动 陆上神国I 弹条",
	time = 3,
	picture = "",
	desc = "",
	stack = 1,
	id = 200547,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAttach"
			},
			arg_list = {
				skill_id = 200547,
				target = "TargetSelf"
			}
		}
	}
}
