return {
	{},
	time = 3,
	name = "",
	init_effect = "",
	id = 30195,
	picture = "",
	desc = "",
	stack = 1,
	color = "red",
	icon = 20000,
	last_effect = "",
	effect_list = {
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAttach"
			},
			arg_list = {
				target = "TargetSelf",
				maxTargetNumber = 0,
				skill_id = 30190,
				check_target = {
					"TargetSelf",
					"TargetShipTag"
				},
				ship_tag_list = {
					"The-Four-Symbols"
				}
			}
		},
		{
			type = "BattleBuffCastSkill",
			trigger = {
				"onAttach"
			},
			arg_list = {
				minTargetNumber = 1,
				target = "TargetSelf",
				skill_id = 30191,
				check_target = {
					"TargetSelf",
					"TargetShipTag"
				},
				ship_tag_list = {
					"The-Four-Symbols"
				}
			}
		}
	}
}
